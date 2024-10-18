import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A handler for updating a feature.
Future<Response> updateFeatureHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');

  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('No id provided, aborting.');

    return Response.badRequest();
  }

  if (await prisma.feature.findUnique(where: FeatureWhereUniqueInput(id: id)) == null) {
    request.log('Not Found: Feature with ID $id does not exist.');
    return Response.notFound(null);
  }

  final type = args.data['type'] as String?;
  final name = args.data['name'] as String?;
  final description = args.data['description'] as String?;
  final trialPeriod = args.data['trial_period'] as int?;

  try {
    final feature = await prisma.$transaction(
      (prisma) => prisma.feature.update(
        where: FeatureWhereUniqueInput(id: id),
        data: PrismaUnion.$1(
          FeatureUpdateInput(
            name: name != null ? PrismaUnion.$1(name) : null,
            description: description != null ? PrismaUnion.$1(description) : null,
            type: type != null ? PrismaUnion.$1(FeatureType.values.byName(type.toLowerCase())) : null,
            trialPeriod: trialPeriod != null ? PrismaUnion.$1(trialPeriod) : null,
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Updated feature with ID $id.');
    return feature!.toResponse();
  } catch (e, s) {
    request.log('Failed to update feature with ID $id', e, s);
    return Response.internalServerError();
  }
}
