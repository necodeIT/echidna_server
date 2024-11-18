import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all customers or a single product with the given ID.
Future<Response> getCustomersHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');

  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('No id provided, returning all customers.');

    final customers = await prisma.customer.findMany();

    return customers.toResponse();
  }

  final customer = await prisma.customer.findUnique(where: CustomerWhereUniqueInput(id: id));

  if (customer == null) {
    request.log('Not Found: Customer with ID $id does not exist');
    return Response.notFound(null);
  }

  request.log('Returned customer with ID $id.');
  return customer.toResponse();
}
