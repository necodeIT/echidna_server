import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Revokes a license with the given ID.
Future<Response> revokeLicenseHandler(Request request, Injector i, ModularArguments args) async {
  return Response.ok('Hello, World!');
}
