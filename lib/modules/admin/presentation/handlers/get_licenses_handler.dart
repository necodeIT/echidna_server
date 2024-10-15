import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all licenses or a single license by ID.
Future<Response> getLicensesHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as String?;
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    final licenses = await prisma.license.findMany();

    return Response.ok(licenses.map((e) => e.toJson()).toList());
  }

  final license = await prisma.license.findUnique(where: LicenseWhereUniqueInput(licenseKey: id));

  if (license == null) {
    return Response.notFound("License with ID '$id' does not exist.");
  }

  return Response.ok(license.toJson());
}
