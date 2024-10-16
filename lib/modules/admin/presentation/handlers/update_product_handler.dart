import 'package:license_server/license_server.dart';
import 'package:logging/logging.dart';
import 'package:orm/orm.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Upadted the product with the given ID based on the request body.
Future<Response> updateProductHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as int?;

  if (id == null) {
    return Response.badRequest(body: 'ID is required.');
  }

  final prisma = i.get<PrismaClient>();

  final oldProduct = await prisma.product.findUnique(where: ProductWhereUniqueInput(id: id));

  if (oldProduct == null) {
    return Response.notFound('Product not found.');
  }

  var name = args.data['name'] as String?;
  var description = args.data['description'] as String?;

  name ??= oldProduct.name!;
  description ??= oldProduct.description;

  try {
    await prisma.$transaction(
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
    return Response.ok(
      Product(
        id: id,
        name: name,
        description: description,
      ).toJson(),
    );
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to update product', e, s);
    return Response.internalServerError();
  }
}
