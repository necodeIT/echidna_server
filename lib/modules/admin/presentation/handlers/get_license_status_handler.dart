import 'dart:convert';

import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Gets the status of a license by its id.
Future<Response> getLicenseStatusHandler(Request request, Injector i, ModularArguments args) async {
  final datasource = i.get<LicenseStatusDatasource>();

  final id = args.params['id'];

  if (id == null) {
    request.log('Bad Request: No id given');
    return Response.badRequest(body: 'ID required');
  }

  final licenseStatus = await datasource.getLicenseStatus(id);

  return Response.ok(jsonEncode(licenseStatus));
}
