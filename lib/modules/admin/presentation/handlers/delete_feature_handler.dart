import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A handler for deleting a feature.
Future<Response> deleteFeatureHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('No id provided aborting.');

    return Response.badRequest();
  }

  final feature = await prisma.feature.findUnique(
    where: FeatureWhereUniqueInput(id: id),
    include: const FeatureInclude(
      payments: PrismaUnion.$1(true),
    ),
  );

  if (feature == null) {
    request.log('Not Found: Feature with ID $id does not exist.');
    return Response.notFound(null);
  }

  if (feature.payments?.isNotEmpty ?? false) {
    request.log('Failed to delete feature with ID $id: Feature has payments.');
    return Response.forbidden('Feature has payments associated with it. Cannot delete.');
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.feature.delete(where: FeatureWhereUniqueInput(id: id)),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Deleted feature with ID $id.');
    return Response.ok(null);
  } catch (e, s) {
    request.log('Failed to delete feature with ID $id', e, s);
    return Response.internalServerError();
  }
}
