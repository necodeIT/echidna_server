import 'package:echidna_server/echidna_server.dart';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Revokes a client key with given key.
Future<Response> revokeClientKeyHandler(Request request, Injector i, ModularArguments args) async {
  final key = args.params['key'] as String?;
  final prisma = i.get<PrismaClient>();

  if (key == null) {
    request.log('Bad Request: No key given');
    return Response.badRequest(body: 'key is required.');
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.clientKey.update(
        where: ClientKeyWhereUniqueInput(key: key),
        data: const PrismaUnion.$1(
          ClientKeyUpdateInput(
            revoked: PrismaUnion.$1(true),
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Successfully revoked client key with key $key');

    return Response.ok(null);
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to revoke client key', e, s);
    return Response.internalServerError();
  }
}
