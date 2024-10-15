import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Upadted the product with the given ID based on the request body.
Future<Response> updateProductHandler(Request request, Injector i, ModularArguments args) async {
  return Response.ok('Hello, World!');
}
