// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_pep_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterPepEntity {
  String get userRef => throw _privateConstructorUsedError;
  int get relationship => throw _privateConstructorUsedError;
  String get pepName => throw _privateConstructorUsedError;
  String get pepPosition => throw _privateConstructorUsedError;
  int get nationality => throw _privateConstructorUsedError;
  int get pepType => throw _privateConstructorUsedError;

  /// Create a copy of RegisterPepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterPepEntityCopyWith<RegisterPepEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPepEntityCopyWith<$Res> {
  factory $RegisterPepEntityCopyWith(
          RegisterPepEntity value, $Res Function(RegisterPepEntity) then) =
      _$RegisterPepEntityCopyWithImpl<$Res, RegisterPepEntity>;
  @useResult
  $Res call(
      {String userRef,
      int relationship,
      String pepName,
      String pepPosition,
      int nationality,
      int pepType});
}

/// @nodoc
class _$RegisterPepEntityCopyWithImpl<$Res, $Val extends RegisterPepEntity>
    implements $RegisterPepEntityCopyWith<$Res> {
  _$RegisterPepEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterPepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? relationship = null,
    Object? pepName = null,
    Object? pepPosition = null,
    Object? nationality = null,
    Object? pepType = null,
  }) {
    return _then(_value.copyWith(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int,
      pepName: null == pepName
          ? _value.pepName
          : pepName // ignore: cast_nullable_to_non_nullable
              as String,
      pepPosition: null == pepPosition
          ? _value.pepPosition
          : pepPosition // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as int,
      pepType: null == pepType
          ? _value.pepType
          : pepType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterPepEntityImplCopyWith<$Res>
    implements $RegisterPepEntityCopyWith<$Res> {
  factory _$$RegisterPepEntityImplCopyWith(_$RegisterPepEntityImpl value,
          $Res Function(_$RegisterPepEntityImpl) then) =
      __$$RegisterPepEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userRef,
      int relationship,
      String pepName,
      String pepPosition,
      int nationality,
      int pepType});
}

/// @nodoc
class __$$RegisterPepEntityImplCopyWithImpl<$Res>
    extends _$RegisterPepEntityCopyWithImpl<$Res, _$RegisterPepEntityImpl>
    implements _$$RegisterPepEntityImplCopyWith<$Res> {
  __$$RegisterPepEntityImplCopyWithImpl(_$RegisterPepEntityImpl _value,
      $Res Function(_$RegisterPepEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterPepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? relationship = null,
    Object? pepName = null,
    Object? pepPosition = null,
    Object? nationality = null,
    Object? pepType = null,
  }) {
    return _then(_$RegisterPepEntityImpl(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int,
      pepName: null == pepName
          ? _value.pepName
          : pepName // ignore: cast_nullable_to_non_nullable
              as String,
      pepPosition: null == pepPosition
          ? _value.pepPosition
          : pepPosition // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as int,
      pepType: null == pepType
          ? _value.pepType
          : pepType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterPepEntityImpl implements _RegisterPepEntity {
  const _$RegisterPepEntityImpl(
      {required this.userRef,
      required this.relationship,
      required this.pepName,
      required this.pepPosition,
      required this.nationality,
      required this.pepType});

  @override
  final String userRef;
  @override
  final int relationship;
  @override
  final String pepName;
  @override
  final String pepPosition;
  @override
  final int nationality;
  @override
  final int pepType;

  @override
  String toString() {
    return 'RegisterPepEntity(userRef: $userRef, relationship: $relationship, pepName: $pepName, pepPosition: $pepPosition, nationality: $nationality, pepType: $pepType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPepEntityImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.pepName, pepName) || other.pepName == pepName) &&
            (identical(other.pepPosition, pepPosition) ||
                other.pepPosition == pepPosition) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.pepType, pepType) || other.pepType == pepType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRef, relationship, pepName,
      pepPosition, nationality, pepType);

  /// Create a copy of RegisterPepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPepEntityImplCopyWith<_$RegisterPepEntityImpl> get copyWith =>
      __$$RegisterPepEntityImplCopyWithImpl<_$RegisterPepEntityImpl>(
          this, _$identity);
}

abstract class _RegisterPepEntity implements RegisterPepEntity {
  const factory _RegisterPepEntity(
      {required final String userRef,
      required final int relationship,
      required final String pepName,
      required final String pepPosition,
      required final int nationality,
      required final int pepType}) = _$RegisterPepEntityImpl;

  @override
  String get userRef;
  @override
  int get relationship;
  @override
  String get pepName;
  @override
  String get pepPosition;
  @override
  int get nationality;
  @override
  int get pepType;

  /// Create a copy of RegisterPepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterPepEntityImplCopyWith<_$RegisterPepEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
