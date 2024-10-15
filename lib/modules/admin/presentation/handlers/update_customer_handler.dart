import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Updates the customer with the given ID based on the request body.
Future<Response> updateCustomerHandler(Request request, Injector i, ModularArguments args) async {
  return Response.ok('Hello, World!');
}
