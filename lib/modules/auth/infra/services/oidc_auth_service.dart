import 'dart:convert';

import 'package:echidna_dto/echidna_dto.dart';
import 'package:echidna_server/modules/auth/auth.dart';
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
  Future<bool> verifyToken(String token) async {
    try {
      final basic = '${_identityProvider.clientId}:${_identityProvider.clientSecret}';

      final response = await _networkService.post(
        _identityProvider.introspectUri,
        {
          'token': token,
        },
        headers: {
          'Authorization': 'Basic ${base64Encode(utf8.encode(basic))}',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );

      response.raiseForStatusCode();

      return response.body['client_id'] == _identityProvider.clientId;
    } catch (e, stackTrace) {
      log('Error verifying token', e, stackTrace);
      throw Exception('Error verifying token: $e');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _networkService.dispose();
  }
}
