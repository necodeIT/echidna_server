import 'package:license_server/modules/auth/auth.dart';
import 'package:license_server_rest/license_server_rest.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

/// Implements [AuthService] using an [OidcIdentityProvider].
class OidcAuthService extends AuthService {
  /// The [OidcIdentityProvider] used by this service.
  final OidcIdentityProvider _identityProvider;

  /// The [NetworkService] used by this service.
  final NetworkService _networkService;

  /// Implements [AuthService] using an [OidcIdentityProvider].
  OidcAuthService(this._networkService, this._identityProvider);

  @override
  Future<User> getUserDetails(String token) async {
    try {
      final response = await _networkService.get(
        _identityProvider.userInfoUrl,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      response.raiseForStatusCode();

      return User.fromJson(response.body);
    } catch (e, stackTrace) {
      log('Error getting user details', e, stackTrace);
      throw Exception('Error getting user details: $e');
    }
  }

  @override
  Future<bool> verifyToken(String token) async {
    try {
      final response = await _networkService.post(
        _identityProvider.tokenUrl,
        {
          'token': token,
          'client_id': _identityProvider.clientId,
          'client_secret': _identityProvider.clientSecret,
        },
      );

      response.raiseForStatusCode();

      return response.body['active'] == true;
    } catch (e, stackTrace) {
      log('Error verifying token', e, stackTrace);
      throw Exception('Error verifying token: $e');
    }
  }

  @override
  void dispose() {
    _networkService.dispose();
  }
}
