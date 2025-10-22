// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_passcode_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavePasscodeEntity {
  int get userId => throw _privateConstructorUsedError;
  String get userRef => throw _privateConstructorUsedError;
  String get authStatus => throw _privateConstructorUsedError;

  /// Create a copy of SavePasscodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavePasscodeEntityCopyWith<SavePasscodeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePasscodeEntityCopyWith<$Res> {
  factory $SavePasscodeEntityCopyWith(
          SavePasscodeEntity value, $Res Function(SavePasscodeEntity) then) =
      _$SavePasscodeEntityCopyWithImpl<$Res, SavePasscodeEntity>;
  @useResult
  $Res call({int userId, String userRef, String authStatus});
}

/// @nodoc
class _$SavePasscodeEntityCopyWithImpl<$Res, $Val extends SavePasscodeEntity>
    implements $SavePasscodeEntityCopyWith<$Res> {
  _$SavePasscodeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavePasscodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userRef = null,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePasscodeEntityImplCopyWith<$Res>
    implements $SavePasscodeEntityCopyWith<$Res> {
  factory _$$SavePasscodeEntityImplCopyWith(_$SavePasscodeEntityImpl value,
          $Res Function(_$SavePasscodeEntityImpl) then) =
      __$$SavePasscodeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String userRef, String authStatus});
}

/// @nodoc
class __$$SavePasscodeEntityImplCopyWithImpl<$Res>
    extends _$SavePasscodeEntityCopyWithImpl<$Res, _$SavePasscodeEntityImpl>
    implements _$$SavePasscodeEntityImplCopyWith<$Res> {
  __$$SavePasscodeEntityImplCopyWithImpl(_$SavePasscodeEntityImpl _value,
      $Res Function(_$SavePasscodeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavePasscodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userRef = null,
    Object? authStatus = null,
  }) {
    return _then(_$SavePasscodeEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavePasscodeEntityImpl implements _SavePasscodeEntity {
  const _$SavePasscodeEntityImpl(
      {required this.userId, required this.userRef, required this.authStatus});

  @override
  final int userId;
  @override
  final String userRef;
  @override
  final String authStatus;

  @override
  String toString() {
    return 'SavePasscodeEntity(userId: $userId, userRef: $userRef, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePasscodeEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, userRef, authStatus);

  /// Create a copy of SavePasscodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePasscodeEntityImplCopyWith<_$SavePasscodeEntityImpl> get copyWith =>
      __$$SavePasscodeEntityImplCopyWithImpl<_$SavePasscodeEntityImpl>(
          this, _$identity);
}

abstract class _SavePasscodeEntity implements SavePasscodeEntity {
  const factory _SavePasscodeEntity(
      {required final int userId,
      required final String userRef,
      required final String authStatus}) = _$SavePasscodeEntityImpl;

  @override
  int get userId;
  @override
  String get userRef;
  @override
  String get authStatus;

  /// Create a copy of SavePasscodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavePasscodeEntityImplCopyWith<_$SavePasscodeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
