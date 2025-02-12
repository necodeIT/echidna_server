import 'package:echidna_server/echidna_server.dart';
import 'package:logging/logging.dart';
import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:test/test.dart';

import 'defaults.dart';

const authHeader = {
  'Authorization': 'Bearer unit-tests',
};

final now = DateTime.now().toUtc().copyWith(
      microsecond: 0,
    );

Future<void> main() async {
  Logger.root.level = Level.ALL;
  // ignore: avoid_print
  Logger.root.onRecord.listen((r) => print(r.formatColored()));

  setUpAll(start);

  setUp(() async {
    await prisma.customer.create(
      data: const PrismaUnion.$1(
        CustomerCreateInput(
          name: 'Test Customer',
          email: 'test@customer.com',
        ),
      ),
    );

    await prisma.customer.create(
      data: const PrismaUnion.$1(
        CustomerCreateInput(
          name: 'Test Customer 2',
          email: 'test2@customer.com',
        ),
      ),
    );

    await prisma.customer.create(
      data: const PrismaUnion.$1(
        CustomerCreateInput(
          name: 'Test Customer 3',
          email: 'test3@customer.com',
        ),
      ),
    );

    await prisma.product.create(
      data: const PrismaUnion.$1(
        ProductCreateInput(
          name: 'Test Product',
          description: PrismaUnion.$1('Test Description'),
        ),
      ),
    );
    await prisma.product.create(
      data: const PrismaUnion.$1(
        ProductCreateInput(
          name: 'Test Product 2',
          description: PrismaUnion.$1('Test Description 2'),
        ),
      ),
    );
    await prisma.product.create(
      data: const PrismaUnion.$1(
        ProductCreateInput(
          name: 'Test Product 3',
          description: PrismaUnion.$1('Test Description 3'),
        ),
      ),
    );

    await prisma.license.create(
      data: const PrismaUnion.$1(
        LicenseCreateInput(
          licenseKey: '1',
          userId: PrismaUnion.$1('5'),
          customer: CustomerCreateNestedOneWithoutLicensesInput(
            connect: CustomerWhereUniqueInput(id: 1),
          ),
          product: ProductCreateNestedOneWithoutLicenseInput(
            connect: ProductWhereUniqueInput(id: 1),
          ),
        ),
      ),
    );
    await prisma.license.create(
      data: const PrismaUnion.$1(
        LicenseCreateInput(
          licenseKey: '2',
          userId: PrismaUnion.$1('256'),
          customer: CustomerCreateNestedOneWithoutLicensesInput(
            connect: CustomerWhereUniqueInput(id: 1),
          ),
          product: ProductCreateNestedOneWithoutLicenseInput(
            connect: ProductWhereUniqueInput(id: 2),
          ),
        ),
      ),
    );

    await prisma.feature.create(
      data: const PrismaUnion.$1(
        FeatureCreateInput(
          name: 'Test Feature',
          description: 'Test Description',
          type: FeatureType.paid,
          trialPeriod: PrismaUnion.$1(30),
          product: ProductCreateNestedOneWithoutFeaturesInput(
            connect: ProductWhereUniqueInput(id: 1),
          ),
        ),
      ),
    );
    await prisma.feature.create(
      data: const PrismaUnion.$1(
        FeatureCreateInput(
          name: 'Test Feature 2',
          description: 'Test Description 2',
          type: FeatureType.free,
          product: ProductCreateNestedOneWithoutFeaturesInput(
            connect: ProductWhereUniqueInput(id: 1),
          ),
        ),
      ),
    );

    await prisma.payment.create(
      data: PrismaUnion.$2(
        PaymentUncheckedCreateInput(
          licenseKey: '1',
          features: const FeatureUncheckedCreateNestedManyWithoutPaymentsInput(
            connect: PrismaUnion.$1(
              FeatureWhereUniqueInput(id: 1),
            ),
          ),
          expirationDate: now.add(const Duration(days: 30)),
          activationDate: now,
        ),
      ),
    );
  });

  tearDown(purgeDatabase);
  tearDownAll(close);

  // TODO(mcquenji): Add tests
  group('Client Module', () {});
}
