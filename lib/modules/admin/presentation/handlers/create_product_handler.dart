import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Adds a new product to the DB with the given ID.
Future<Response> createProductHandler(Request request, Injector i, ModularArguments args) async {
  final prisma = i.get<PrismaClient>();

  final name = args.data['name'] as String?;
  final description = args.data['description'] as String?;

  if (name == null || description == null) {
    request.log('Bad Request: Product name or description is missing');
    return Response.badRequest(body: 'Product name and description are required.');
  }

  try {
    final product = await prisma.$transaction(
      (prisma) => prisma.product.create(
        data: PrismaUnion.$1(
          ProductCreateInput(
            name: name,
            description: PrismaUnion.$1(description),
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );
    request.log('Product $name added successfully');

    return product.toResponse();
  } on Exception catch (e, s) {
    request.log('Failed to add product $name', e, s);
    return Response.internalServerError();
  }
}
