import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Creates a
Future<Response> createFeatureHandler(Request request, Injector i, ModularArguments args) async {
  final type = args.data['type'] as String?;
  final name = args.data['name'] as String?;
  final description = args.data['description'] as String?;
  final trialPeriod = args.data['trial_period'] as int?;
  final productId = args.data['product_id'] as int?;

  final prisma = i.get<PrismaClient>();

  if (type == null || name == null || description == null || productId == null) {
    request.log('Missing required fields, aborting.');

    return Response.badRequest(body: 'Type, name, and description are required.');
  }

  try {
    final feature = await prisma.$transaction(
      (prisma) => prisma.feature.create(
        data: PrismaUnion.$1(
          FeatureCreateInput(
            product: ProductCreateNestedOneWithoutFeaturesInput(
              connect: ProductWhereUniqueInput(id: productId),
            ),
            name: name,
            description: description,
            type: FeatureType.values.byName(type.toLowerCase()),
            trialPeriod: trialPeriod != null ? PrismaUnion.$1(trialPeriod) : null,
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );

    request.log('Created feature with ID ${feature.id}');
    return feature.toResponse();
  } catch (e, s) {
    request.log('Failed to create feature', e, s);
    return Response.internalServerError();
  }
}
