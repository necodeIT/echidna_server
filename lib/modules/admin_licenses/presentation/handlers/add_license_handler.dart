import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Adds a new License to the DB with the given ID.
Future<Response> addLicenseHandler(Request request, Injector i, ModularArguments args) async {
  return Response.ok('Hello, World!');
}
