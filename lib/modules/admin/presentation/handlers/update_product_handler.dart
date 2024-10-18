import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Upadted the product with the given ID based on the request body.
Future<Response> updateProductHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');

  if (id == null) {
    request.log('Bad Request: No ID given');
    return Response.badRequest(body: 'ID is required.');
  }

  final prisma = i.get<PrismaClient>();

  final oldProduct = await prisma.product.findUnique(where: ProductWhereUniqueInput(id: id));

  if (oldProduct == null) {
    request.log('Not Found: Product with ID $id not found');
    return Response.notFound(null);
  }

  var name = args.data['name'] as String?;
  var description = args.data['description'] as String?;

  name ??= oldProduct.name!;
  description ??= oldProduct.description;

  try {
    final product = await prisma.$transaction(
      (prisma) => prisma.product.update(
        where: ProductWhereUniqueInput(id: id),
        data: PrismaUnion.$1(
          ProductUpdateInput(
            name: PrismaUnion.$1(name!),
            description: description == null ? null : PrismaUnion.$1(description),
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('updated product with ID $id successfully');
    return product!.toResponse();
  } on Exception catch (e, s) {
    request.log('Failed to update product with ID $id', e, s);
    return Response.internalServerError();
  }
}
