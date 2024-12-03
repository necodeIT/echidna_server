import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all client keys.
Future<Response> getClientKeysHandler(Request request, Injector i, ModularArguments args) async {
  final prisma = i.get<PrismaClient>();

  final clientKeys = await prisma.clientKey.findMany(
    where: const ClientKeyWhereInput(
      revoked: PrismaUnion.$2(false),
    ),
  );

  request.log('Found ${clientKeys.length} client keys');

  return clientKeys.toResponse();
}
