import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Returns a list of all products or a single product with the given ID.
Future<Response> getCustomersHandler(Request request, Injector i, ModularArguments args) async {
  return Response.ok('Hello, World!');
}
