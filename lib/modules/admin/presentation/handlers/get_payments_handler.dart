import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all features or a single feature by ID.
Future<Response> getPaymentsHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('No id provided, returning all payments.');

    final payments = await prisma.payment.findMany();

    return payments.toResponse();
  }

  final payment = await prisma.payment.findUnique(
    where: PaymentWhereUniqueInput(id: id),
    include: const PaymentInclude(
      features: PrismaUnion.$1(true),
    ),
  );

  if (payment == null) {
    request.log('Not Found: Payment with ID $id does not exist');
    return Response.notFound(null);
  }

  request.log('Returned payment with ID $id.');
  return payment.toResponse();
}
