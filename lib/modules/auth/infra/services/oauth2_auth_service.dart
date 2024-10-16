import 'package:license_server/modules/auth/auth.dart';

/// Implements [AuthService] using an [Oauth2IdentityProvider].
class Oauth2AuthService extends AuthService<Oauth2IdentityProvider> {
  /// Implements [AuthService] using an [Oauth2IdentityProvider].
  Oauth2AuthService(super.networkService, super.identityProvider);

  @override
  Future<User> getUserDetails(String token) async {
    try {
      final response = await networkService.get(
        identityProvider.userInfoUrl,
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
      final response = await networkService.post(
        identityProvider.tokenUrl,
        {
          'token': token,
          'client_id': identityProvider.clientId,
          'client_secret': identityProvider.clientSecret,
        },
      );

      response.raiseForStatusCode();

      return response.body['active'] == true;
    } catch (e, stackTrace) {
      log('Error verifying token', e, stackTrace);
      throw Exception('Error verifying token: $e');
    }
  }
}
