// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'identity_provider.freezed.dart';
part 'identity_provider.g.dart';

/// Represents a third-party identity provider.
@freezed
class IdentityProvider with _$IdentityProvider {
  const IdentityProvider._();

  /// A identity provider that uses SAML.
  const factory IdentityProvider.saml({
    required String name,
    required String metadataUrl,
    required String x509Certificate,
  }) = SamlIdentityProvider;

  /// A identity provider that uses OIDC.
  const factory IdentityProvider.oidc({
    required String name,
    required String clientId,
    required String clientSecret,
    required String redirectUri,
    required String authorizationUrl,
    required String tokenUrl,
    required String userInfoUrl,
    required String scopes,
  }) = OidcIdentityProvider;

  /// Creates a [IdentityProvider] from a JSON map.
  factory IdentityProvider.fromJson(Map<String, Object?> json) => _$IdentityProviderFromJson(json);

  /// Loads the identity provider from the environment.
  factory IdentityProvider.fromEnvironment() {
    const backend = String.fromEnvironment('AUTH_BACKEND');

    return switch (backend) {
      'oidc' => const IdentityProvider.oidc(
          name: String.fromEnvironment('OIDC_NAME'),
          clientId: String.fromEnvironment('OIDC_CLIENT_ID'),
          clientSecret: String.fromEnvironment('OIDC_CLIENT_SECRET'),
          tokenUrl: String.fromEnvironment('OIDC_TOKEN_URL'),
          userInfoUrl: String.fromEnvironment('OIDC_USER_INFO_URL'),
          authorizationUrl: String.fromEnvironment('OIDC_AUTHORIZATION_URL'),
          redirectUri: String.fromEnvironment('OIDC_REDIRECT_URI'),
          scopes: String.fromEnvironment('OIDC_SCOPES'),
        ),
      _ => throw const InvalidIdentityProviderException(backend),
    };
  }
}

/// Utility extension on [OidcIdentityProvider].
extension OidcIdentityProviderX on OidcIdentityProvider {
  /// Returns [scopes] as a list.
  List<String> get scopeList => scopes.split(',');
}

/// Thrown when an invalid identity provider is selected.
class InvalidIdentityProviderException implements Exception {
  /// The name of the invalid identity provider.
  final String name;

  /// Thrown when an invalid identity provider is selected.
  const InvalidIdentityProviderException(this.name);

  @override
  String toString() => 'Invalid authentication backend: $name';
}
