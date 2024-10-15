import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Deletes the customer with the given ID.
Future<Response> deleteCustomerHandler(Request request, Injector i, ModularArguments args) async {
  return Response.ok('Hello, World!');
}
