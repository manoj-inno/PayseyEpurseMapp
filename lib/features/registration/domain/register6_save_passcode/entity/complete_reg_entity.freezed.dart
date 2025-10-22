// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_reg_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEntity {
  int get id => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get authStatus => throw _privateConstructorUsedError;
  String get userRef => throw _privateConstructorUsedError;
  String get jwtToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationEntityCopyWith<RegistrationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEntityCopyWith<$Res> {
  factory $RegistrationEntityCopyWith(
          RegistrationEntity value, $Res Function(RegistrationEntity) then) =
      _$RegistrationEntityCopyWithImpl<$Res, RegistrationEntity>;
  @useResult
  $Res call(
      {int id,
      String mobile,
      String email,
      String authStatus,
      String userRef,
      String jwtToken,
      String refreshToken});
}

/// @nodoc
class _$RegistrationEntityCopyWithImpl<$Res, $Val extends RegistrationEntity>
    implements $RegistrationEntityCopyWith<$Res> {
  _$RegistrationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobile = null,
    Object? email = null,
    Object? authStatus = null,
    Object? userRef = null,
    Object? jwtToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationEntityImplCopyWith<$Res>
    implements $RegistrationEntityCopyWith<$Res> {
  factory _$$RegistrationEntityImplCopyWith(_$RegistrationEntityImpl value,
          $Res Function(_$RegistrationEntityImpl) then) =
      __$$RegistrationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String mobile,
      String email,
      String authStatus,
      String userRef,
      String jwtToken,
      String refreshToken});
}

/// @nodoc
class __$$RegistrationEntityImplCopyWithImpl<$Res>
    extends _$RegistrationEntityCopyWithImpl<$Res, _$RegistrationEntityImpl>
    implements _$$RegistrationEntityImplCopyWith<$Res> {
  __$$RegistrationEntityImplCopyWithImpl(_$RegistrationEntityImpl _value,
      $Res Function(_$RegistrationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobile = null,
    Object? email = null,
    Object? authStatus = null,
    Object? userRef = null,
    Object? jwtToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$RegistrationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationEntityImpl implements _RegistrationEntity {
  const _$RegistrationEntityImpl(
      {required this.id,
      required this.mobile,
      required this.email,
      required this.authStatus,
      required this.userRef,
      required this.jwtToken,
      required this.refreshToken});

  @override
  final int id;
  @override
  final String mobile;
  @override
  final String email;
  @override
  final String authStatus;
  @override
  final String userRef;
  @override
  final String jwtToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RegistrationEntity(id: $id, mobile: $mobile, email: $email, authStatus: $authStatus, userRef: $userRef, jwtToken: $jwtToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, mobile, email, authStatus,
      userRef, jwtToken, refreshToken);

  /// Create a copy of RegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationEntityImplCopyWith<_$RegistrationEntityImpl> get copyWith =>
      __$$RegistrationEntityImplCopyWithImpl<_$RegistrationEntityImpl>(
          this, _$identity);
}

abstract class _RegistrationEntity implements RegistrationEntity {
  const factory _RegistrationEntity(
      {required final int id,
      required final String mobile,
      required final String email,
      required final String authStatus,
      required final String userRef,
      required final String jwtToken,
      required final String refreshToken}) = _$RegistrationEntityImpl;

  @override
  int get id;
  @override
  String get mobile;
  @override
  String get email;
  @override
  String get authStatus;
  @override
  String get userRef;
  @override
  String get jwtToken;
  @override
  String get refreshToken;

  /// Create a copy of RegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationEntityImplCopyWith<_$RegistrationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
