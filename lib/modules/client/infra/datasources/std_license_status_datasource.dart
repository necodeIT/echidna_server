import 'package:echidna_dto/echidna_dto.dart' as dto;
import 'package:echidna_server/echidna_server.dart';

/// Standard implementation of [LicenseStatusDatasource].
class StdLicenseStatusDatasource extends LicenseStatusDatasource {
  /// Database client.
  final PrismaClient prisma;

  /// Standard implementation of [LicenseStatusDatasource].
  StdLicenseStatusDatasource(this.prisma);

  @override
  void dispose() {}

  @override
  Future<dto.LicenseStatus> getLicenseStatus(String licenseKey) async {
    final license = await prisma.license.findUnique(
      where: LicenseWhereUniqueInput(
        licenseKey: licenseKey,
      ),
    );

    if (license == null) {
      throw Exception('License not found');
    }

    final customerId = license.customerId!;
    final productId = license.productId!;

    final isCustomerLicense = license.userId == null;

    var active = false;
    final featureClaims = <dto.FeatureClaim>{};

    // free features or features with trial period are bound to a user
    if (!isCustomerLicense) {
      final freeFeatures = await prisma.feature.findMany(
        where: FeatureWhereInput(
          productId: PrismaUnion.$2(productId),
          type: const PrismaUnion.$2(FeatureType.free),
        ),
      );

      featureClaims.addAll(
        freeFeatures.map(
          (f) => dto.FeatureClaim(
            feature: dto.Feature.fromJson(f.toJson()),
            level: dto.ClaimLevel.personal,
          ),
        ),
      );

      log('Free features: ${freeFeatures.map((f) => f.name).join(', ')}');

      final trialFeatures = await prisma.feature.findMany(
        where: FeatureWhereInput(
          productId: PrismaUnion.$2(productId),
          type: const PrismaUnion.$2(FeatureType.paid),
          trialPeriod: const PrismaUnion.$1(
            IntNullableFilter(
              not: PrismaUnion.$2(PrismaUnion.$2(PrismaNull())),
              gt: PrismaUnion.$1(0),
            ),
          ),
        ),
      );

      final createdAt = license.createdAt!;

      for (final feature in trialFeatures) {
        final trialPeriod = feature.trialPeriod!;
        final trialExpiration = createdAt.add(Duration(days: trialPeriod));

        if (DateTime.now().isBefore(trialExpiration)) {
          featureClaims.add(
            dto.FeatureClaim(
              feature: dto.Feature.fromJson(feature.toJson()),
              level: dto.ClaimLevel.personal,
            ),
          );
        }
      }
    }
    try {
      final customerWideLicense = await prisma.license.findFirst(
        where: LicenseWhereInput(
          customerId: PrismaUnion.$2(customerId),
          productId: PrismaUnion.$2(productId),
          userId: const PrismaUnion.$2(PrismaUnion.$2(PrismaNull())),
        ),
      );

      if (customerWideLicense != null && customerWideLicense.licenseKey != license.licenseKey) {
        log('Customer-wide license found. Checking for customer-wide feature claims.');

        final customerStatus = await getLicenseStatus(customerWideLicense.licenseKey!);

        featureClaims.addAll(customerStatus.featureClaims);

        log('Customer-wide feature claims: ${customerStatus.featureClaims.map((f) => f.feature.name).join(', ')}');

        active = customerStatus.active;
      }
    } catch (e, s) {
      log('Unable to find customer wide license', e, s);
    }

    final payments = await prisma.payment.findMany(
      where: PaymentWhereInput(
        licenseKey: PrismaUnion.$2(licenseKey),
        expirationDate: PrismaUnion.$1(
          DateTimeFilter(
            gte: PrismaUnion.$1(
              DateTime.now(),
            ),
          ),
        ),
        revoked: const PrismaUnion.$2(false),
      ),
      include: const PaymentInclude(
        features: PrismaUnion.$1(true),
      ),
      orderBy: const PrismaUnion.$1(
        [
          PaymentOrderByWithRelationInput(
            activationDate: SortOrder.desc,
          ),
          PaymentOrderByWithRelationInput(
            expirationDate: SortOrder.desc,
          ),
        ],
      ),
    );

    for (final payment in payments) {
      featureClaims.addAll(
        payment.features!.map(
          (f) => dto.FeatureClaim(
            feature: dto.Feature.fromJson(f.toJson()),
            level: isCustomerLicense ? dto.ClaimLevel.customer : dto.ClaimLevel.personal,
          ),
        ),
      );
    }

    log('Final feature claims: ${featureClaims.map((f) => f.feature.name).join(', ')}');

    if (payments.isNotEmpty) active = true;

    return dto.LicenseStatus(
      licenseKey: licenseKey,
      featureClaims: featureClaims.toList(),
      active: active,
      activationDate: payments.isNotEmpty ? payments.first.activationDate : null,
      expirationDate: payments.isNotEmpty ? payments.first.expirationDate : null,
    );
  }
}
