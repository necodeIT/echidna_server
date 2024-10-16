import 'package:license_server/license_server.dart';
import 'package:logging/logging.dart';
import 'package:orm/orm.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Deletes the customer with the given ID.
Future<Response> deleteCustomerHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as int?;
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    return Response.badRequest(body: "Don't! Just don't!");
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.customer.delete(
        where: CustomerWhereUniqueInput(id: id),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    return Response.ok('');
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to delete customer.', e, s);
    return Response.internalServerError();
  }
}
