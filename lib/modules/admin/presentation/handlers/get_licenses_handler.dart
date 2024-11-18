import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all licenses or a single license by ID.
Future<Response> getLicensesHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as String?;
  final prisma = i.get<PrismaClient>();

  if (id == null || id.isEmpty) {
    request.log('No id provided, returning all licenses.');

    final licenses = await prisma.license.findMany();

    return licenses.toResponse();
  }

  final license = await prisma.license.findUnique(where: LicenseWhereUniqueInput(licenseKey: id));

  if (license == null) {
    request.log('Not Found: License with ID $id does not exist');
    return Response.notFound(null);
  }

  request.log('Returned license with ID $id.');
  return license.toResponse();
}
