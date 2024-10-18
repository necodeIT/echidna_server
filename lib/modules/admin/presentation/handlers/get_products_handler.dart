import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all products or a single pruduct by ID.
Future<Response> getProductsHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('No id provided, returning all products');

    final products = await prisma.product.findMany();

    return products.toResponse();
  }

  final product = await prisma.product.findUnique(where: ProductWhereUniqueInput(id: id));

  if (product == null) {
    request.log('Not Found: Product with ID $id does not exist.');
    return Response.notFound(null);
  }

  request.log('Returned product with ID $id.');
  return product.toResponse();
}
