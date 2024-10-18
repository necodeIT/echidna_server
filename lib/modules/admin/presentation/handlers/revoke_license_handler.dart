import 'package:license_server/license_server.dart';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Revokes a license with the given ID.
Future<Response> revokeLicenseHandler(Request request, Injector i, ModularArguments args) async {
  final id = args.params['id'] as String?;
  final revocationReason = args.data['reason'] as String?;
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('Bad Request: No ID given');
    return Response.badRequest(body: 'id is required.');
  }

  if (revocationReason == null) {
    request.log('Bad Request: No revocation reason is given');
    return Response.badRequest(body: 'reason is required');
  }

  final payment = await prisma.payment.findFirst(
    where: PaymentWhereInput(licenseKey: PrismaUnion.$2(id)),
    orderBy: const PrismaUnion.$2(
      PaymentOrderByWithRelationInput(
        expirationDate: SortOrder.desc,
      ),
    ), //might be the wrong order.
  );

  if (payment == null) {
    request.log('Not Found: License has no valid payment');
    return Response.notFound(null);
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.payment.update(
        where: PaymentWhereUniqueInput(id: payment.id),
        data: PrismaUnion.$1(
          PaymentUpdateInput(
            revoked: const PrismaUnion.$1(true),
            revocationReasoning: PrismaUnion.$1(revocationReason),
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Successfully revoked license with ID $id');

    return Response.ok(null);
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to revoke license', e, s);
    return Response.internalServerError();
  }
}
