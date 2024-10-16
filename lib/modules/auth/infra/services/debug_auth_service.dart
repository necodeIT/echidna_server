import 'package:license_server/modules/auth/auth.dart';

/// A debug implementation of the [AuthService] that always returns true.
class DebugAuthService extends AuthService {
  @override
  Future<User> getUserDetails(String token) async => const User(
        id: '1',
        email: 'debug@example.com',
        name: 'Debug User',
      );

  @override
  Future<bool> verifyToken(String token) async => true;

  @override
  void dispose() {}
}
