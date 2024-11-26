import 'package:echidna_server/echidna_server.dart';
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
  userId ??= oldLicense.userId;

  try {
    final license = await prisma.$transaction(
      (prisma) async => await prisma.license.update(
        data: PrismaUnion.$1(
          LicenseUpdateInput(
            customer: CustomerUpdateOneRequiredWithoutLicensesNestedInput(
              connect: CustomerWhereUniqueInput(id: customerId),
            ),
            product: ProductUpdateOneRequiredWithoutLicenseNestedInput(
              connect: ProductWhereUniqueInput(id: productId),
            ),
            userId: PrismaUnion.$2(
              PrismaUnion.$1(
                NullableStringFieldUpdateOperationsInput(
                  set: userId != null
                      ? PrismaUnion.$1(userId)
                      : const PrismaUnion.$2(
                          PrismaNull(),
                        ),
                ),
              ),
            ),
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
