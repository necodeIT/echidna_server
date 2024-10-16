import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all customers or a single product with the given ID.
Future<Response> getCustomersHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as int?;
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    final customers = await prisma.customer.findMany();

    return Response.ok(customers.map((e) => e.toJson()).toList());
  }

  final customer = await prisma.customer.findUnique(where: CustomerWhereUniqueInput(id: id));

  if (customer == null) {
    return Response.notFound("Customer with ID '$id' does not exist.");
  }

  return Response.ok(customer.toJson());
}
