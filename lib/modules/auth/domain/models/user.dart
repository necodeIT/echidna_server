// ignore_for_file: invalid_annotation_target

import 'package:echidna_dto/echidna_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// {@template user}
///
/// A user provided by a third-party [IdentityProvider].
///
/// {@endtemplate}
@freezed
class User with _$User {
  /// {@macro user}
  const factory User({
    required String id,
    required String name,
    required String email,
  }) = _User;

  const User._();

  /// Creates a [User] from a JSON map.
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
