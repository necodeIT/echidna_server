import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns all payments associated with a license key.
Future<Response> getLicensePaymentsHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as String?;

  final prisma = i.get<PrismaClient>();

  if (id == null || id.isEmpty) {
    request.log('No id provided, aborting.');

    return Response.badRequest();
  }

  final license = await prisma.license.findUnique(where: LicenseWhereUniqueInput(licenseKey: id));

  if (license == null) {
    request.log('Not Found: License with ID $id does not exist');
    return Response.notFound(null);
  }

  final payments = await prisma.payment.findMany(
    where: PaymentWhereInput(
      licenseKey: PrismaUnion.$2(id),
    ),
    include: const PaymentInclude(
      features: PrismaUnion.$1(true),
    ),
  );

  return payments.toResponse();
}
