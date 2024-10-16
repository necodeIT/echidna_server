// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Oauth2IdentityProviderImpl _$$Oauth2IdentityProviderImplFromJson(
        Map<String, dynamic> json) =>
    _$Oauth2IdentityProviderImpl(
      name: json['name'] as String,
      clientId: json['clientId'] as String,
      clientSecret: json['clientSecret'] as String,
      redirectUri: json['redirectUri'] as String,
      authorizationUrl: json['authorizationUrl'] as String,
      tokenUrl: json['tokenUrl'] as String,
      userInfoUrl: json['userInfoUrl'] as String,
      scopes: json['scopes'] as String,
    );

Map<String, dynamic> _$$Oauth2IdentityProviderImplToJson(
        _$Oauth2IdentityProviderImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'clientId': instance.clientId,
      'clientSecret': instance.clientSecret,
      'redirectUri': instance.redirectUri,
      'authorizationUrl': instance.authorizationUrl,
      'tokenUrl': instance.tokenUrl,
      'userInfoUrl': instance.userInfoUrl,
      'scopes': instance.scopes,
    };
