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

IdentityProvider _$IdentityProviderFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'saml':
      return SamlIdentityProvider.fromJson(json);
    case 'oidc':
      return OidcIdentityProvider.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'IdentityProvider',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$IdentityProvider {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String metadataUrl, String x509Certificate)
        saml,
    required TResult Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)
        oidc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String metadataUrl, String x509Certificate)?
        saml,
    TResult? Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)?
        oidc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String metadataUrl, String x509Certificate)?
        saml,
    TResult Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)?
        oidc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamlIdentityProvider value) saml,
    required TResult Function(OidcIdentityProvider value) oidc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SamlIdentityProvider value)? saml,
    TResult? Function(OidcIdentityProvider value)? oidc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamlIdentityProvider value)? saml,
    TResult Function(OidcIdentityProvider value)? oidc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this IdentityProvider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdentityProviderCopyWith<IdentityProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityProviderCopyWith<$Res> {
  factory $IdentityProviderCopyWith(
          IdentityProvider value, $Res Function(IdentityProvider) then) =
      _$IdentityProviderCopyWithImpl<$Res, IdentityProvider>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$IdentityProviderCopyWithImpl<$Res, $Val extends IdentityProvider>
    implements $IdentityProviderCopyWith<$Res> {
  _$IdentityProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SamlIdentityProviderImplCopyWith<$Res>
    implements $IdentityProviderCopyWith<$Res> {
  factory _$$SamlIdentityProviderImplCopyWith(_$SamlIdentityProviderImpl value,
          $Res Function(_$SamlIdentityProviderImpl) then) =
      __$$SamlIdentityProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String metadataUrl, String x509Certificate});
}

/// @nodoc
class __$$SamlIdentityProviderImplCopyWithImpl<$Res>
    extends _$IdentityProviderCopyWithImpl<$Res, _$SamlIdentityProviderImpl>
    implements _$$SamlIdentityProviderImplCopyWith<$Res> {
  __$$SamlIdentityProviderImplCopyWithImpl(_$SamlIdentityProviderImpl _value,
      $Res Function(_$SamlIdentityProviderImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? metadataUrl = null,
    Object? x509Certificate = null,
  }) {
    return _then(_$SamlIdentityProviderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      metadataUrl: null == metadataUrl
          ? _value.metadataUrl
          : metadataUrl // ignore: cast_nullable_to_non_nullable
              as String,
      x509Certificate: null == x509Certificate
          ? _value.x509Certificate
          : x509Certificate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SamlIdentityProviderImpl extends SamlIdentityProvider {
  const _$SamlIdentityProviderImpl(
      {required this.name,
      required this.metadataUrl,
      required this.x509Certificate,
      final String? $type})
      : $type = $type ?? 'saml',
        super._();

  factory _$SamlIdentityProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SamlIdentityProviderImplFromJson(json);

  @override
  final String name;
  @override
  final String metadataUrl;
  @override
  final String x509Certificate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IdentityProvider.saml(name: $name, metadataUrl: $metadataUrl, x509Certificate: $x509Certificate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SamlIdentityProviderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.metadataUrl, metadataUrl) ||
                other.metadataUrl == metadataUrl) &&
            (identical(other.x509Certificate, x509Certificate) ||
                other.x509Certificate == x509Certificate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, metadataUrl, x509Certificate);

  /// Create a copy of IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SamlIdentityProviderImplCopyWith<_$SamlIdentityProviderImpl>
      get copyWith =>
          __$$SamlIdentityProviderImplCopyWithImpl<_$SamlIdentityProviderImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String metadataUrl, String x509Certificate)
        saml,
    required TResult Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)
        oidc,
  }) {
    return saml(name, metadataUrl, x509Certificate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String metadataUrl, String x509Certificate)?
        saml,
    TResult? Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)?
        oidc,
  }) {
    return saml?.call(name, metadataUrl, x509Certificate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String metadataUrl, String x509Certificate)?
        saml,
    TResult Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)?
        oidc,
    required TResult orElse(),
  }) {
    if (saml != null) {
      return saml(name, metadataUrl, x509Certificate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamlIdentityProvider value) saml,
    required TResult Function(OidcIdentityProvider value) oidc,
  }) {
    return saml(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SamlIdentityProvider value)? saml,
    TResult? Function(OidcIdentityProvider value)? oidc,
  }) {
    return saml?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamlIdentityProvider value)? saml,
    TResult Function(OidcIdentityProvider value)? oidc,
    required TResult orElse(),
  }) {
    if (saml != null) {
      return saml(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SamlIdentityProviderImplToJson(
      this,
    );
  }
}

abstract class SamlIdentityProvider extends IdentityProvider {
  const factory SamlIdentityProvider(
      {required final String name,
      required final String metadataUrl,
      required final String x509Certificate}) = _$SamlIdentityProviderImpl;
  const SamlIdentityProvider._() : super._();

  factory SamlIdentityProvider.fromJson(Map<String, dynamic> json) =
      _$SamlIdentityProviderImpl.fromJson;

  @override
  String get name;
  String get metadataUrl;
  String get x509Certificate;

  /// Create a copy of IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SamlIdentityProviderImplCopyWith<_$SamlIdentityProviderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OidcIdentityProviderImplCopyWith<$Res>
    implements $IdentityProviderCopyWith<$Res> {
  factory _$$OidcIdentityProviderImplCopyWith(_$OidcIdentityProviderImpl value,
          $Res Function(_$OidcIdentityProviderImpl) then) =
      __$$OidcIdentityProviderImplCopyWithImpl<$Res>;
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
      String scopes});
}

/// @nodoc
class __$$OidcIdentityProviderImplCopyWithImpl<$Res>
    extends _$IdentityProviderCopyWithImpl<$Res, _$OidcIdentityProviderImpl>
    implements _$$OidcIdentityProviderImplCopyWith<$Res> {
  __$$OidcIdentityProviderImplCopyWithImpl(_$OidcIdentityProviderImpl _value,
      $Res Function(_$OidcIdentityProviderImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdentityProvider
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
    return _then(_$OidcIdentityProviderImpl(
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
class _$OidcIdentityProviderImpl extends OidcIdentityProvider {
  const _$OidcIdentityProviderImpl(
      {required this.name,
      required this.clientId,
      required this.clientSecret,
      required this.redirectUri,
      required this.authorizationUrl,
      required this.tokenUrl,
      required this.userInfoUrl,
      required this.scopes,
      final String? $type})
      : $type = $type ?? 'oidc',
        super._();

  factory _$OidcIdentityProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OidcIdentityProviderImplFromJson(json);

  @override
  final String name;
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String redirectUri;
  @override
  final String authorizationUrl;
  @override
  final String tokenUrl;
  @override
  final String userInfoUrl;
  @override
  final String scopes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IdentityProvider.oidc(name: $name, clientId: $clientId, clientSecret: $clientSecret, redirectUri: $redirectUri, authorizationUrl: $authorizationUrl, tokenUrl: $tokenUrl, userInfoUrl: $userInfoUrl, scopes: $scopes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OidcIdentityProviderImpl &&
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

  /// Create a copy of IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OidcIdentityProviderImplCopyWith<_$OidcIdentityProviderImpl>
      get copyWith =>
          __$$OidcIdentityProviderImplCopyWithImpl<_$OidcIdentityProviderImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String metadataUrl, String x509Certificate)
        saml,
    required TResult Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)
        oidc,
  }) {
    return oidc(name, clientId, clientSecret, redirectUri, authorizationUrl,
        tokenUrl, userInfoUrl, scopes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String metadataUrl, String x509Certificate)?
        saml,
    TResult? Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)?
        oidc,
  }) {
    return oidc?.call(name, clientId, clientSecret, redirectUri,
        authorizationUrl, tokenUrl, userInfoUrl, scopes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String metadataUrl, String x509Certificate)?
        saml,
    TResult Function(
            String name,
            String clientId,
            String clientSecret,
            String redirectUri,
            String authorizationUrl,
            String tokenUrl,
            String userInfoUrl,
            String scopes)?
        oidc,
    required TResult orElse(),
  }) {
    if (oidc != null) {
      return oidc(name, clientId, clientSecret, redirectUri, authorizationUrl,
          tokenUrl, userInfoUrl, scopes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamlIdentityProvider value) saml,
    required TResult Function(OidcIdentityProvider value) oidc,
  }) {
    return oidc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SamlIdentityProvider value)? saml,
    TResult? Function(OidcIdentityProvider value)? oidc,
  }) {
    return oidc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamlIdentityProvider value)? saml,
    TResult Function(OidcIdentityProvider value)? oidc,
    required TResult orElse(),
  }) {
    if (oidc != null) {
      return oidc(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OidcIdentityProviderImplToJson(
      this,
    );
  }
}

abstract class OidcIdentityProvider extends IdentityProvider {
  const factory OidcIdentityProvider(
      {required final String name,
      required final String clientId,
      required final String clientSecret,
      required final String redirectUri,
      required final String authorizationUrl,
      required final String tokenUrl,
      required final String userInfoUrl,
      required final String scopes}) = _$OidcIdentityProviderImpl;
  const OidcIdentityProvider._() : super._();

  factory OidcIdentityProvider.fromJson(Map<String, dynamic> json) =
      _$OidcIdentityProviderImpl.fromJson;

  @override
  String get name;
  String get clientId;
  String get clientSecret;
  String get redirectUri;
  String get authorizationUrl;
  String get tokenUrl;
  String get userInfoUrl;
  String get scopes;

  /// Create a copy of IdentityProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OidcIdentityProviderImplCopyWith<_$OidcIdentityProviderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
