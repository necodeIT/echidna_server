import 'package:collection/collection.dart';
import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:uuid/uuid.dart';

/// Creates a new client key for a product.
Future<Response> createClientKeyHandler(Request request, Injector i, ModularArguments args) async {
  final productId = args.data['product_id'] as int?;
  final customerId = args.data['customer_id'] as int?;

  final prisma = i.get<PrismaClient>();

  if (productId == null) {
    request.log('No product ID provided, aborting.');

    return Response.badRequest(body: 'product_id is required.');
  }

  if (customerId == null) {
    request.log('No customer ID provided, aborting.');

    return Response.badRequest(body: 'customer_id is required.');
  }

  final product = await prisma.product.findUnique(where: ProductWhereUniqueInput(id: productId));

  if (product == null) {
    request.log('Not Found: Product with ID $productId does not exist.');
    return Response.notFound(null);
  }

  final customer = await prisma.customer.findUnique(where: CustomerWhereUniqueInput(id: customerId));

  if (customer == null) {
    request.log('Not Found: Customer with ID $customerId does not exist.');
    return Response.notFound(null);
  }

  final clientKeys = await prisma.clientKey.findMany(
    where: ClientKeyWhereInput(
      productId: PrismaUnion.$2(productId),
      customerId: PrismaUnion.$2(customerId),
    ),
  );

  if (clientKeys.isNotEmpty) {
    final clientKey = clientKeys.firstWhereOrNull((k) => k.revoked == false);

    if (clientKey != null) {
      request.log('Found existing client key for product with ID $productId, returning it.');
      return clientKey.toResponse();
    }

    request.log('No active client key found for product with ID $productId, creating a new one.');
  }

  try {
    const uuid = Uuid();

    final key = uuid.v4();

    final clientKey = await prisma.clientKey.create(
      data: PrismaUnion.$1(
        ClientKeyCreateInput(
          key: key,
          product: ProductCreateNestedOneWithoutClientKeysInput(
            connect: ProductWhereUniqueInput(id: productId),
          ),
          customer: CustomerCreateNestedOneWithoutClientKeysInput(
            connect: CustomerWhereUniqueInput(id: customerId),
          ),
        ),
      ),
    );

    request.log('Created new client key for product with ID $productId.');

    return clientKey.toResponse();
  } catch (e, s) {
    request.log('Error creating client key for product with ID $productId', e, s);
    return Response.internalServerError();
  }
}
