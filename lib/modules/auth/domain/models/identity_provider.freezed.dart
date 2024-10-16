// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'identity_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Oauth2IdentityProvider _$Oauth2IdentityProviderFromJson(
    Map<String, dynamic> json) {
  return _Oauth2IdentityProvider.fromJson(json);
}

/// @nodoc
mixin _$Oauth2IdentityProvider {
  /// The name of the identity provider.
  String get name => throw _privateConstructorUsedError;

  /// The client ID for the OAuth2 identity provider.
  String get clientId => throw _privateConstructorUsedError;

  /// The client secret for the OAuth2 identity provider.
  String get clientSecret => throw _privateConstructorUsedError;

  /// The redirect URI for the OAuth2 identity provider.
  String get redirectUri => throw _privateConstructorUsedError;

  /// The authorization URL for the OAuth2 identity provider.
  String get authorizationUrl => throw _privateConstructorUsedError;

  /// The token URL for the OAuth2 identity provider.
  String get tokenUrl => throw _privateConstructorUsedError;

  /// The user info URL for the OAuth2 identity provider.
  String get userInfoUrl => throw _privateConstructorUsedError;

  /// The scopes for the OAuth2 identity provider separated by comma.
  ///
  /// For serialization only. Use [scopesList] instead.
  @protected
  String get scopes => throw _privateConstructorUsedError;

  /// Serializes this Oauth2IdentityProvider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Oauth2IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Oauth2IdentityProviderCopyWith<Oauth2IdentityProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Oauth2IdentityProviderCopyWith<$Res> {
  factory $Oauth2IdentityProviderCopyWith(Oauth2IdentityProvider value,
          $Res Function(Oauth2IdentityProvider) then) =
      _$Oauth2IdentityProviderCopyWithImpl<$Res, Oauth2IdentityProvider>;
  @useResult
  $Res call(
      {String name,
      String clientId,
      String clientSecret,
      String redirectUri,
      String authorizationUrl,
      String tokenUrl,
      String userInfoUrl,
      @protected String scopes});
}

/// @nodoc
class _$Oauth2IdentityProviderCopyWithImpl<$Res,
        $Val extends Oauth2IdentityProvider>
    implements $Oauth2IdentityProviderCopyWith<$Res> {
  _$Oauth2IdentityProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Oauth2IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? clientId = null,
    Object? clientSecret = null,
    Object? redirectUri = null,
    Object? authorizationUrl = null,
    Object? tokenUrl = null,
    Object? userInfoUrl = null,
    Object? scopes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationUrl: null == authorizationUrl
          ? _value.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tokenUrl: null == tokenUrl
          ? _value.tokenUrl
          : tokenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoUrl: null == userInfoUrl
          ? _value.userInfoUrl
          : userInfoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Oauth2IdentityProviderImplCopyWith<$Res>
    implements $Oauth2IdentityProviderCopyWith<$Res> {
  factory _$$Oauth2IdentityProviderImplCopyWith(
          _$Oauth2IdentityProviderImpl value,
          $Res Function(_$Oauth2IdentityProviderImpl) then) =
      __$$Oauth2IdentityProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String clientId,
      String clientSecret,
      String redirectUri,
      String authorizationUrl,
      String tokenUrl,
      String userInfoUrl,
      @protected String scopes});
}

/// @nodoc
class __$$Oauth2IdentityProviderImplCopyWithImpl<$Res>
    extends _$Oauth2IdentityProviderCopyWithImpl<$Res,
        _$Oauth2IdentityProviderImpl>
    implements _$$Oauth2IdentityProviderImplCopyWith<$Res> {
  __$$Oauth2IdentityProviderImplCopyWithImpl(
      _$Oauth2IdentityProviderImpl _value,
      $Res Function(_$Oauth2IdentityProviderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Oauth2IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? clientId = null,
    Object? clientSecret = null,
    Object? redirectUri = null,
    Object? authorizationUrl = null,
    Object? tokenUrl = null,
    Object? userInfoUrl = null,
    Object? scopes = null,
  }) {
    return _then(_$Oauth2IdentityProviderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationUrl: null == authorizationUrl
          ? _value.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tokenUrl: null == tokenUrl
          ? _value.tokenUrl
          : tokenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoUrl: null == userInfoUrl
          ? _value.userInfoUrl
          : userInfoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Oauth2IdentityProviderImpl extends _Oauth2IdentityProvider {
  const _$Oauth2IdentityProviderImpl(
      {required this.name,
      required this.clientId,
      required this.clientSecret,
      required this.redirectUri,
      required this.authorizationUrl,
      required this.tokenUrl,
      required this.userInfoUrl,
      @protected required this.scopes})
      : super._();

  factory _$Oauth2IdentityProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$Oauth2IdentityProviderImplFromJson(json);

  /// The name of the identity provider.
  @override
  final String name;

  /// The client ID for the OAuth2 identity provider.
  @override
  final String clientId;

  /// The client secret for the OAuth2 identity provider.
  @override
  final String clientSecret;

  /// The redirect URI for the OAuth2 identity provider.
  @override
  final String redirectUri;

  /// The authorization URL for the OAuth2 identity provider.
  @override
  final String authorizationUrl;

  /// The token URL for the OAuth2 identity provider.
  @override
  final String tokenUrl;

  /// The user info URL for the OAuth2 identity provider.
  @override
  final String userInfoUrl;

  /// The scopes for the OAuth2 identity provider separated by comma.
  ///
  /// For serialization only. Use [scopesList] instead.
  @override
  @protected
  final String scopes;

  @override
  String toString() {
    return 'Oauth2IdentityProvider(name: $name, clientId: $clientId, clientSecret: $clientSecret, redirectUri: $redirectUri, authorizationUrl: $authorizationUrl, tokenUrl: $tokenUrl, userInfoUrl: $userInfoUrl, scopes: $scopes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Oauth2IdentityProviderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.authorizationUrl, authorizationUrl) ||
                other.authorizationUrl == authorizationUrl) &&
            (identical(other.tokenUrl, tokenUrl) ||
                other.tokenUrl == tokenUrl) &&
            (identical(other.userInfoUrl, userInfoUrl) ||
                other.userInfoUrl == userInfoUrl) &&
            (identical(other.scopes, scopes) || other.scopes == scopes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, clientId, clientSecret,
      redirectUri, authorizationUrl, tokenUrl, userInfoUrl, scopes);

  /// Create a copy of Oauth2IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Oauth2IdentityProviderImplCopyWith<_$Oauth2IdentityProviderImpl>
      get copyWith => __$$Oauth2IdentityProviderImplCopyWithImpl<
          _$Oauth2IdentityProviderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Oauth2IdentityProviderImplToJson(
      this,
    );
  }
}

abstract class _Oauth2IdentityProvider extends Oauth2IdentityProvider {
  const factory _Oauth2IdentityProvider(
      {required final String name,
      required final String clientId,
      required final String clientSecret,
      required final String redirectUri,
      required final String authorizationUrl,
      required final String tokenUrl,
      required final String userInfoUrl,
      @protected required final String scopes}) = _$Oauth2IdentityProviderImpl;
  const _Oauth2IdentityProvider._() : super._();

  factory _Oauth2IdentityProvider.fromJson(Map<String, dynamic> json) =
      _$Oauth2IdentityProviderImpl.fromJson;

  /// The name of the identity provider.
  @override
  String get name;

  /// The client ID for the OAuth2 identity provider.
  @override
  String get clientId;

  /// The client secret for the OAuth2 identity provider.
  @override
  String get clientSecret;

  /// The redirect URI for the OAuth2 identity provider.
  @override
  String get redirectUri;

  /// The authorization URL for the OAuth2 identity provider.
  @override
  String get authorizationUrl;

  /// The token URL for the OAuth2 identity provider.
  @override
  String get tokenUrl;

  /// The user info URL for the OAuth2 identity provider.
  @override
  String get userInfoUrl;

  /// The scopes for the OAuth2 identity provider separated by comma.
  ///
  /// For serialization only. Use [scopesList] instead.
  @override
  @protected
  String get scopes;

  /// Create a copy of Oauth2IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Oauth2IdentityProviderImplCopyWith<_$Oauth2IdentityProviderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
