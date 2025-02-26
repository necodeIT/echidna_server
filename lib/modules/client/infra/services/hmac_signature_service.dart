import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';

/// Signs and verifies signatures using the HMAC algorithm.
class HmacSignatureService extends SignatureService {
  /// Database client.
  final PrismaClient prisma;

  /// Signs and verifies signatures using the HMAC algorithm.
  HmacSignatureService(this.prisma);

  @override
  String sign(String body, String secret) {
    final hmac = Hmac(sha256, utf8.encode(secret));
    final signature = hmac.convert(utf8.encode(body)).toString();

    log('Generated signature: $signature, secret: $secret, body: $body');

    return signature;
  }

  @override
  bool verifySignature(String signature, String body, String secret) {
    final serverSignature = sign(body, secret);

    final valid = signature == serverSignature;

    if (!valid) {
      log('Invalid signature: Signature is "$signature", expected "$serverSignature"');
    }

    return valid;
  }

  @override
  Future<ClientKey?> extractClientKey(Request request) async {
    final clientId = int.tryParse(request.headers['client-id'] ?? '');

    if (clientId == null) {
      return null;
    }

    final clientKey = await prisma.clientKey.findUnique(
      where: ClientKeyWhereUniqueInput(
        id: clientId,
        revoked: const PrismaUnion.$2(false),
      ),
    );

    return clientKey;
  }
}
