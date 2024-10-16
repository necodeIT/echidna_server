import 'package:license_server/license_server.dart';
import 'package:logging/logging.dart';
import 'package:orm/orm.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Adds a new product to the DB with the given ID.
Future<Response> createProductHandler(Request request, Injector i, ModularArguments args) async {
  final prisma = i.get<PrismaClient>();

  final name = args.data['name'] as String?;
  final description = args.data['description'] as String?;

  if (name == null || description == null) {
    return Response.badRequest(body: 'Product name and description are required.');
  }

  try {
    await prisma.$transaction(
      (prisma) => prisma.product.create(
        data: PrismaUnion.$1(
          ProductCreateInput(
            name: name,
            description: PrismaUnion.$1(description),
          ),
        ),
      ),
      isolationLevel: TransactionIsolationLevel.serializable,
    );
  } on Exception catch (e, s) {
    Logger('${request.method} ${request.url}').severe('Failed to add product', e, s);
    return Response.internalServerError();
  }

  return Response.ok('Hello, World!');
}
