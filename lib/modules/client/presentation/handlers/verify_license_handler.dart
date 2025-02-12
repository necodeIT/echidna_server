import 'dart:convert';

import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Verifies a user's license.
Future<Response> verifyLicenseHandler(Request request, Injector i, ModularArguments args) async {
  final signatureService = i.get<SignatureService>();
  final prisma = i.get<PrismaClient>();
  final datasource = i.get<LicenseStatusDatasource>();

  final clientKey = await signatureService.extractClientKey(request);

  if (clientKey == null) {
    request.log('Could not extract client key. Unauthorized.');
    return Response.forbidden('Invalid signature');
  }

  final userId = args.data['userId'];

  if (userId == null) {
    request.log('Bad Request: No user ID given');
    return Response.badRequest();
  }

  var license = await prisma.license.findFirst(
    where: LicenseWhereInput(
      userId: PrismaUnion.$2(PrismaUnion.$1(userId)),
      customerId: PrismaUnion.$2(clientKey.customerId!),
      productId: PrismaUnion.$2(clientKey.productId!),
    ),
  );

  if (license == null) {
    request.log('License not found. Creating new license.');

    try {
      await createLicenseHandler(
        request,
        i,
        ModularArguments(
          uri: args.uri,
          data: {
            'customerId': clientKey.customerId,
            'productId': clientKey.productId,
            'userId': userId,
          },
        ),
      );

      license = await prisma.license.findFirst(
        where: LicenseWhereInput(
          userId: PrismaUnion.$2(PrismaUnion.$1(userId)),
          customerId: PrismaUnion.$2(clientKey.customerId!),
          productId: PrismaUnion.$2(clientKey.productId!),
        ),
      );

      if (license == null) {
        throw Exception('License not found after creation.');
      }
    } catch (e, s) {
      request.log('Error creating license', e, s);
      return Response.internalServerError();
    }
  }

  final status = await datasource.getLicenseStatus(license.licenseKey!);

  return Response.ok(jsonEncode(status));
}
