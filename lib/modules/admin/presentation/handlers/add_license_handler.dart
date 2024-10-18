import 'package:license_server/license_server.dart';
import 'package:logging/logging.dart';
import 'package:orm/orm.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Adds a new License to the DB with the given ID.
Future<Response> addLicenseHandler(Request request, Injector i, ModularArguments args) async {
  final prisma = i.get<PrismaClient>();

  final licenseGenerator = i.get<LicenseKeyGeneratorService>();

  final customerId = args.data['customerId'] as int?;
  final productId = args.data['productId'] as int?;
  final userId = args.data['userId'] as String?;

  if (customerId == null || productId == null || userId == null) {
    request.log('Bad Request: Customer ID, Product ID and User ID ar not given');
    return Response.badRequest(body: 'Customer ID, Product ID and User ID are required.');
  }

  final key = await licenseGenerator.generateLicenseKey(
    productId,
    customerId,
    userId,
  );

  if (await prisma.license.findUnique(where: LicenseWhereUniqueInput(licenseKey: key)) != null) {
    request.log('Bad Request: License already exists');
    return Response.badRequest(body: 'License already exists.');
  }

  final license = License(
    licenseKey: key,
    customerId: customerId,
    productId: productId,
  );

  try {
    await prisma.$transaction(
      (prisma) => prisma.license.create(
        data: PrismaUnion.$1(
          LicenseCreateInput(
            licenseKey: key,
            userId: PrismaUnion.$1(userId),
            customer: CustomerCreateNestedOneWithoutLicensesInput(
              connect: CustomerWhereUniqueInput(id: customerId),
            ),
            product: ProductCreateNestedOneWithoutLicenseInput(
              connect: ProductWhereUniqueInput(id: productId),
            ),
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );
    request.log('License Created for user with id $userId');

    return license.toResponse();
  } on Exception catch (e) {
    Logger('${request.method} ${request.url}').severe('Failed to add license', e);
    return Response.internalServerError();
  }
}
