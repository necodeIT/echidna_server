import 'dart:async';

import 'package:echidna_server/modules/auth/auth.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A [RouteGuard] that checks if the request has a valid token.
class AuthGuard extends RouteGuard {
  @override
  FutureOr<bool> canActivate(Request request, Route route) async {
    final auth = Modular.get<AuthService>();

    String? token;

    if (route.middlewares.any((element) => element is WebsocketMarkerMiddleware)) {
      token = request.url.queryParameters['token'];
    } else {
      token = request.headers['Authorization']?.split('Bearer ').last;
    }

    if (token == null) {
      return false;
    }

    try {
      return await auth.verifyToken(token);
    } catch (e) {
      return false;
    }
  }
}

/// A [ModularMiddleware] that marks a route as a websocket route.
class WebsocketMarkerMiddleware extends ModularMiddleware {
  @override
  Handler call(Handler handler, [ModularRoute? route]) {
    return handler;
  }
}
