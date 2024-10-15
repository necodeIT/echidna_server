import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Updates the licenses with the given ID based on the request body.
Future<Response> updateLicenseHandler(Request request, Injector i, ModularArguments args) async {
  return Response.ok('Hello, World!');
}
