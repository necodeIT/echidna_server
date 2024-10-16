import 'package:license_server/license_server.dart';
import 'package:logging/logging.dart';
import 'package:orm/orm.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Deletes the product with the given ID.
Future<Response> deleteProductHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as int?;
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    return Response.badRequest(body: "Don't! Just don't!");
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.product.delete(
        where: ProductWhereUniqueInput(id: id),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    return Response.ok('');
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to delete product.', e, s);
    return Response.internalServerError();
  }
}
