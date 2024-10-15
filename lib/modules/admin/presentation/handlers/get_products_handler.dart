import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all products or a single pruduct by ID.
Future<Response> getProductsHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as int?;
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    final products = await prisma.product.findMany();

    return Response.ok(products.map((e) => e.toJson()).toList());
  }

  final product = await prisma.product.findUnique(where: ProductWhereUniqueInput(id: id));

  if (product == null) {
    return Response.notFound("Product with ID '$id' does not exist.");
  }

  return Response.ok(product.toJson());
}
