import 'package:license_server/license_server.dart';
import 'package:logging/logging.dart';
import 'package:orm/orm.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Updates the customer with the given ID based on the request body.
Future<Response> updateCustomerHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as int?;

  if (id == null) {
    return Response.badRequest(body: 'ID is required.');
  }

  final prisma = i.get<PrismaClient>();

  final oldCustomer = await prisma.customer.findUnique(where: CustomerWhereUniqueInput(id: id));

  if (oldCustomer == null) {
    return Response.notFound('Customer not found.');
  }

  var name = args.data['name'] as String?;
  var email = args.data['email'] as String?;

  name ??= oldCustomer.name!;
  email ??= oldCustomer.email!;

  try {
    await prisma.$transaction(
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
    return Response.ok(
      Customer(
        id: id,
        name: name,
        email: email,
      ).toJson(),
    );
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to update customer', e, s);
    return Response.internalServerError();
  }
}
