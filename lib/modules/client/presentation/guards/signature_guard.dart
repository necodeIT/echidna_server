import 'dart:async';
import 'dart:convert';

import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// Verifies that the client key is valid.
class SignatureGuard extends RouteGuard {
  @override
  FutureOr<bool> canActivate(Request request, [ModularRoute? route]) async {
    request.log('Checking signature');

    final body = await request.readAsString();

    final signatureService = Modular.get<SignatureService>();

    final clientKey = await signatureService.extractClientKey(request);

    if (clientKey == null) {
      request.log('No client key found');

      return false;
    }

    final signature = request.headers['x-signature'];

    if (signature == null) {
      request.log('No signature provided');
      return false;
    }

    request.log('Signature provided: $signature');

    final isValid = signatureService.verifySignature(signature, body, clientKey.key!);

    request.log(isValid ? 'Signature verification succeeded' : 'Signature verification failed');

    return isValid;
  }

  @override
  FutureOr<Response> Function(Request p1) call(Handler handler, [ModularRoute? route]) {
    return (request) async {
      if (!await canActivate(request, route! as Route)) {
        return Response.forbidden(
          jsonEncode({'error': 'Invalid signature'}),
        );
      }
      return handler(request);
    };
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

      final clientKey = await signatureService.extractClientKey(request);

      if (clientKey == null) {
        return response;
      }

      final body = await response.readAsString();

      final signature = signatureService.sign(
        body,
        clientKey.key!,
      );

      return response.change(
        body: body,
        headers: {
          'x-signature': signature,
        },
      );
    };
  }
}
