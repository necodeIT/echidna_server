import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Updates the customer with the given ID based on the request body.
Future<Response> updateCustomerHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');

  if (id == null) {
    request.log('Bad Request: no ID given');
    return Response.badRequest(body: 'ID is required.');
  }

  final prisma = i.get<PrismaClient>();

  final oldCustomer = await prisma.customer.findUnique(where: CustomerWhereUniqueInput(id: id));

  if (oldCustomer == null) {
    request.log('Not Found: Customer not found');
    return Response.notFound(null);
  }

  var name = args.data['name'] as String?;
  var email = args.data['email'] as String?;

  name ??= oldCustomer.name!;
  email ??= oldCustomer.email!;

  try {
    final customer = await prisma.$transaction(
      (prisma) => prisma.customer.update(
        where: CustomerWhereUniqueInput(id: id),
        data: PrismaUnion.$1(
          CustomerUpdateInput(
            name: PrismaUnion.$1(name!),
            email: PrismaUnion.$1(email!),
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Succssfully updated customer with ID $id.');
    return customer!.toResponse();
  } on Exception catch (e, s) {
    request.log('Failed to update customer with ID $id.', e, s);
    return Response.internalServerError();
  }
}
