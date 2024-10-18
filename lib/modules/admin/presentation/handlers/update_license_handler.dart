import 'package:license_server/license_server.dart';
import 'package:orm/orm.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Updates the licenses with the given ID based on the request body.
Future<Response> updateLicenseHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as String?;

  if (id == null) {
    request.log('Bad Request: No ID given');
    return Response.badRequest();
  }

  final prisma = i.get<PrismaClient>();

  final oldLicense = await prisma.license.findUnique(where: LicenseWhereUniqueInput(licenseKey: id));

  if (oldLicense == null) {
    request.log('Not Found: License not found');
    return Response.notFound(null);
  }

  var productId = args.data['productId'] as int?;
  var customerId = args.data['customerId'] as int?;
  var userId = args.data['userId'] as String?;

  productId ??= oldLicense.productId!;
  customerId ??= oldLicense.customerId!;
  userId ??= oldLicense.userId!;

  final licenseKeyGenerator = i.get<LicenseKeyGeneratorService>();

  final licenseKey = await licenseKeyGenerator.generateLicenseKey(productId, customerId, userId);

  if (licenseKey == oldLicense.licenseKey) {
    request.log('No changes detected. License key with ID $id not updated.');
    return Response.ok(oldLicense.toJson());
  }

  try {
    final license = await prisma.$transaction(
      // this should also cascade to the payment table and update the license key there
      (prisma) async => await prisma.license.update(
        data: PrismaUnion.$1(
          LicenseUpdateInput(
            licenseKey: PrismaUnion.$1(licenseKey),
            customer: CustomerUpdateOneRequiredWithoutLicensesNestedInput(
              connect: CustomerWhereUniqueInput(id: customerId),
            ),
            product: ProductUpdateOneRequiredWithoutLicenseNestedInput(
              connect: ProductWhereUniqueInput(id: productId),
            ),
            userId: PrismaUnion.$1(userId!),
          ),
        ),
        where: LicenseWhereUniqueInput(licenseKey: id),
      ),
    );

    request.log('License key with ID $id updated successfully.');
    return license!.toResponse();
  } on Exception catch (e, s) {
    request.log('Failed to update license with ID $id.', e, s);
    return Response.internalServerError();
  }
}
