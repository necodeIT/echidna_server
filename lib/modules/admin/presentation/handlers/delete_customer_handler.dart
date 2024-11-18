import 'package:echidna_server/echidna_server.dart';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Deletes the customer with the given ID.
Future<Response> deleteCustomerHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('No id provided, aborting.');
    return Response.badRequest();
  }

  final customer = await prisma.customer.findUnique(
    where: CustomerWhereUniqueInput(id: id),
    include: const CustomerInclude(
      licenses: PrismaUnion.$1(true),
    ),
  );

  if (customer == null) {
    request.log('Not Found: Customer with ID $id does not exist.');
    return Response.notFound(null);
  }

  if (customer.licenses?.isNotEmpty ?? false) {
    request.log('Conflict: Customer with ID $id has licenses.');
    return Response.forbidden('Customer has licenses associated with it. Cannot delete.');
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.customer.delete(
        where: CustomerWhereUniqueInput(id: id),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Deleted customer with ID $id.');
    return Response.ok(null);
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to delete customer.', e, s);
    return Response.internalServerError();
  }
}
