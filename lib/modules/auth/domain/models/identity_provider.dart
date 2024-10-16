// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'identity_provider.freezed.dart';
part 'identity_provider.g.dart';

/// Represents a third-party identity provider.
abstract class IdentityProvider {
  /// The name of the identity provider.
  String get name;

  /// Serializes this identity provider to a JSON map.
  Map<String, dynamic> toJson();
}

/// {@template oauth2_identity_provider}
///
/// Represents an [IdentityProvider] that uses [OAuth2](https://oauth.net/2/).
///
/// {@endtemplate}
@immutable
@freezed
class Oauth2IdentityProvider with _$Oauth2IdentityProvider implements IdentityProvider {
  /// {@macro oauth2_identity_provider}
  const factory Oauth2IdentityProvider({
    /// The name of the identity provider.
    required String name,

    /// The client ID for the OAuth2 identity provider.
    required String clientId,

    /// The client secret for the OAuth2 identity provider.
    required String clientSecret,

    /// The redirect URI for the OAuth2 identity provider.
    required String redirectUri,

    /// The authorization URL for the OAuth2 identity provider.
    required String authorizationUrl,

    /// The token URL for the OAuth2 identity provider.
    required String tokenUrl,

    /// The user info URL for the OAuth2 identity provider.
    required String userInfoUrl,

    /// The scopes for the OAuth2 identity provider separated by comma.
    ///
    /// For serialization only. Use [scopesList] instead.
    @protected required String scopes,
  }) = _Oauth2IdentityProvider;

  const Oauth2IdentityProvider._();

  /// Creates an [Oauth2IdentityProvider] from a JSON map.
  factory Oauth2IdentityProvider.fromJson(Map<String, Object?> json) => _$Oauth2IdentityProviderFromJson(json);

  /// The [scopes] for the OAuth2 identity provider as a list.
  List<String> get scopesList => scopes.split(',');

  /// Creates an [Oauth2IdentityProvider] from the environment.
  const factory Oauth2IdentityProvider.fromEnvironment() = _Oauth2IdentityProviderFromEnvironment;
}

class _Oauth2IdentityProviderFromEnvironment extends _$Oauth2IdentityProviderImpl {
  const _Oauth2IdentityProviderFromEnvironment()
      : super(
          name: const String.fromEnvironment('OAUTH2_NAME'),
          clientId: const String.fromEnvironment('OAUTH2_CLIENT_ID'),
          clientSecret: const String.fromEnvironment('OAUTH2_CLIENT_SECRET'),
          tokenUrl: const String.fromEnvironment('OAUTH2_TOKEN_URL'),
          userInfoUrl: const String.fromEnvironment('OAUTH2_USER_INFO_URL'),
          authorizationUrl: const String.fromEnvironment('OAUTH2_AUTHORIZATION_URL'),
          redirectUri: const String.fromEnvironment('OAUTH2_REDIRECT_URI'),
          scopes: const String.fromEnvironment('OAUTH2_SCOPES'),
        );
}
