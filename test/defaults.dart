import 'dart:async';
import 'dart:convert';

import 'package:license_server/config/server.dart';
import 'package:license_server/license_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:test/test.dart';

final prisma = PrismaClient();

final _server = Modular(
  module: ServerModule(prisma),
  middlewares: [],
);

Future<void> purgeDatabase() async {
  await prisma.product.deleteMany();
  await prisma.feature.deleteMany();
  await prisma.payment.deleteMany();
  await prisma.license.deleteMany();
  await prisma.customer.deleteMany();

  await prisma.$raw.execute('ALTER SEQUENCE "Payment_id_seq" RESTART WITH 1;');
  await prisma.$raw.execute('ALTER SEQUENCE "Customer_id_seq" RESTART WITH 1;');
  await prisma.$raw.execute('ALTER SEQUENCE "Feature_id_seq" RESTART WITH 1;');
  await prisma.$raw.execute('ALTER SEQUENCE "Product_id_seq" RESTART WITH 1;');
}

Future<void> start() async {
  await prisma.$connect();
  await purgeDatabase();
}

Future<void> close() async {
  await purgeDatabase();
  return prisma.$disconnect();
}

Request _buildRequest(String method, String path, Map<String, dynamic>? body, Map<String, String>? headers, Map<String, String>? queryParameters) {
  var _path = path;

  if (queryParameters != null) {
    _path += '?';
    _path += queryParameters.entries.map((e) => '${e.key}=${e.value}').join('&');
  }

  return Request(
    method,
    Uri.parse('http://$kHost$kPort$_path'),
    body: body != null ? jsonEncode(body) : null,
    headers: headers,
  );
}

FutureOr<Response> get(String path, {Map<String, dynamic>? body, Map<String, String>? headers, Map<String, String>? queryParameters}) =>
    _server(_buildRequest('GET', path, body, headers, queryParameters));

FutureOr<Response> post(String path, {Map<String, dynamic>? body, Map<String, String>? headers, Map<String, String>? queryParameters}) =>
    _server(_buildRequest('POST', path, body, headers, queryParameters));

FutureOr<Response> put(String path, {Map<String, dynamic>? body, Map<String, String>? headers, Map<String, String>? queryParameters}) =>
    _server(_buildRequest('PUT', path, body, headers, queryParameters));

FutureOr<Response> delete(String path, {Map<String, dynamic>? body, Map<String, String>? headers, Map<String, String>? queryParameters}) =>
    _server(_buildRequest('DELETE', path, body, headers, queryParameters));

FutureOr<Response> patch(String path, {Map<String, dynamic>? body, Map<String, String>? headers, Map<String, String>? queryParameters}) =>
    _server(_buildRequest('PATCH', path, body, headers, queryParameters));

Future<dynamic> expectContent(Response response, dynamic expected) async {
  return expect(await response.readAsString(), expected);
}

Future<dynamic> expectJson(Response response, dynamic expected) async {
  return expect(jsonDecode(await response.readAsString()), expected);
}
