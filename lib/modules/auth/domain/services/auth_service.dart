import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:license_server/modules/auth/auth.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// Service for authentication.
///
/// Note: This service only verifies the token and does not handle the login process.
abstract class AuthService<Idp extends IdentityProvider> extends Service {
  @override
  String get name => 'Auth';

  /// The [IdentityProvider] used by this service.
  @protected
  final Idp identityProvider;

  /// The [NetworkService] used by this service.
  @protected
  final NetworkService networkService;

  /// Creates an [AuthService] with the given [Idp].
  AuthService(this.identityProvider, this.networkService);

  /// Verifies the given [token] with the given [Idp].
  Future<bool> verifyToken(String token);

  /// Returns user details for the given [token] provided by the given [IdentityProvider].
  Future<User> getUserDetails(String token);

  @mustCallSuper
  @override
  void dispose() {
    networkService.dispose();
  }
}
