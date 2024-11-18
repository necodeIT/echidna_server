import 'package:echidna_server/modules/auth/auth.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// Service for authentication.
///
/// Note: This service only verifies the token and does not handle the login process.
abstract class AuthService extends Service {
  @override
  String get name => 'Auth';

  /// Verifies the given [token].
  Future<bool> verifyToken(String token);

  /// Returns user details for the given [token].
  Future<User> getUserDetails(String token);
}
