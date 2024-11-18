import 'dart:async';

import 'package:echidna_server/modules/auth/auth.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A [RouteGuard] that checks if the request has a valid token.
class AuthGuard extends RouteGuard {
  @override
  FutureOr<bool> canActivate(Request request, Route route) async {
    final auth = Modular.get<AuthService>();

    final token = request.headers['Authorization']?.split('Bearer ').last;

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
