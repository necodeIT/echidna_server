import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all features or a single feature by ID.
Future<Response> getFeaturesHandler(Request request, Injector i, ModularArguments args) async {
  final id = int.tryParse(args.params['id'] as String? ?? '');
  final prisma = i.get<PrismaClient>();

  if (id == null) {
    request.log('No id provided, returning all features.');

    final features = await prisma.feature.findMany();

    return features.toResponse();
  }

  final feature = await prisma.feature.findUnique(where: FeatureWhereUniqueInput(id: id));

  if (feature == null) {
    request.log('Not Found: Feature with ID $id does not exist');
    return Response.notFound(null);
  }

  request.log('Returned feature with ID $id.');
  return feature.toResponse();
}
