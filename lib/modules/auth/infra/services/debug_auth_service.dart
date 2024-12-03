import 'package:echidna_server/modules/auth/auth.dart';

/// A debug implementation of the [AuthService] that always returns true.
class DebugAuthService extends AuthService {
  @override
  Future<bool> verifyToken(String token) async => true;

  @override
  void dispose() {}
}
