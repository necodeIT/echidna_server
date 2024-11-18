import 'package:echidna_server/echidna_server.dart';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Deletes the product with the given ID.
Future<Response> deleteProductHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    return Response.badRequest();
  }

  final product = await prisma.product.findUnique(
    where: ProductWhereUniqueInput(id: id),
    include: const ProductInclude(
      features: PrismaUnion.$1(true),
      license: PrismaUnion.$1(true),
    ),
  );

  if (product == null) {
    request.log('Not Found: Product with ID $id does not exist.');
    return Response.notFound(null);
  }

  if (product.license?.isNotEmpty ?? false) {
    request.log('Conflict: Product with ID $id has licenses.');
    return Response.forbidden('Product has licenses associated with it. Cannot delete.');
  }

  if (product.features?.isNotEmpty ?? false) {
    request.log('Conflict: Product with ID $id has features.');
    return Response.forbidden('Product has features associated with it. Cannot delete.');
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.product.delete(
        where: ProductWhereUniqueInput(id: id),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Deleted product with ID $id.');
    return Response.ok(null);
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to delete product.', e, s);
    return Response.internalServerError();
  }
}
