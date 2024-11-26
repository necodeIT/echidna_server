import 'dart:async';

import 'package:echidna_server/echidna_server.dart';
import 'package:echidna_server/modules/client/client.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Verifies that the client key is valid.
class SignatureGuard extends RouteGuard {
  @override
  FutureOr<bool> canActivate(Request request, Route route) async {
    final clientId = int.tryParse(request.headers['client-id'] ?? '');

    if (clientId == null) {
      return false;
    }

    final signatureService = Modular.get<SignatureService>();

    final clientKey = await signatureService.extractClientKey(request);

    if (clientKey == null) {
      return false;
    }

    final signature = request.headers['x-signature'];

    if (signature == null) {
      return false;
    }

    return signatureService.verifySignature(
      signature,
      await request.readAsString(),
      clientKey.key!,
    );
  }
}

/// Signs server responses.
///
/// If no client key is found, the response is returned as is, so make sure to use this in conjunction with [SignatureGuard].
class SignatureMiddleware extends ModularMiddleware {
  @override
  Handler call(Handler handler, [ModularRoute? route]) {
    return (Request request) async {
      final response = await handler(request);

      final signatureService = Modular.get<SignatureService>();

      final clientId = int.tryParse(request.headers['client-id'] ?? '');

      if (clientId == null) {
        return response;
      }

      final clientKey = await signatureService.extractClientKey(request);

      if (clientKey == null) {
        return response;
      }

      final signature = signatureService.sign(
        await response.readAsString(),
        clientKey.key!,
      );

      return response.change(
        headers: {
          'x-signature': signature,
        },
      );
    };
  }
}
