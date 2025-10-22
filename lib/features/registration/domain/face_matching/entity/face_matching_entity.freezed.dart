// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_matching_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaceMatchEntity {
  int get score => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get verificationStatus => throw _privateConstructorUsedError;

  /// Create a copy of FaceMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaceMatchEntityCopyWith<FaceMatchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceMatchEntityCopyWith<$Res> {
  factory $FaceMatchEntityCopyWith(
          FaceMatchEntity value, $Res Function(FaceMatchEntity) then) =
      _$FaceMatchEntityCopyWithImpl<$Res, FaceMatchEntity>;
  @useResult
  $Res call({int score, bool success, String verificationStatus});
}

/// @nodoc
class _$FaceMatchEntityCopyWithImpl<$Res, $Val extends FaceMatchEntity>
    implements $FaceMatchEntityCopyWith<$Res> {
  _$FaceMatchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaceMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? success = null,
    Object? verificationStatus = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaceMatchEntityImplCopyWith<$Res>
    implements $FaceMatchEntityCopyWith<$Res> {
  factory _$$FaceMatchEntityImplCopyWith(_$FaceMatchEntityImpl value,
          $Res Function(_$FaceMatchEntityImpl) then) =
      __$$FaceMatchEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int score, bool success, String verificationStatus});
}

/// @nodoc
class __$$FaceMatchEntityImplCopyWithImpl<$Res>
    extends _$FaceMatchEntityCopyWithImpl<$Res, _$FaceMatchEntityImpl>
    implements _$$FaceMatchEntityImplCopyWith<$Res> {
  __$$FaceMatchEntityImplCopyWithImpl(
      _$FaceMatchEntityImpl _value, $Res Function(_$FaceMatchEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? success = null,
    Object? verificationStatus = null,
  }) {
    return _then(_$FaceMatchEntityImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FaceMatchEntityImpl implements _FaceMatchEntity {
  const _$FaceMatchEntityImpl(
      {required this.score,
      required this.success,
      required this.verificationStatus});

  @override
  final int score;
  @override
  final bool success;
  @override
  final String verificationStatus;

  @override
  String toString() {
    return 'FaceMatchEntity(score: $score, success: $success, verificationStatus: $verificationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceMatchEntityImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, score, success, verificationStatus);

  /// Create a copy of FaceMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceMatchEntityImplCopyWith<_$FaceMatchEntityImpl> get copyWith =>
      __$$FaceMatchEntityImplCopyWithImpl<_$FaceMatchEntityImpl>(
          this, _$identity);
}

abstract class _FaceMatchEntity implements FaceMatchEntity {
  const factory _FaceMatchEntity(
      {required final int score,
      required final bool success,
      required final String verificationStatus}) = _$FaceMatchEntityImpl;

  @override
  int get score;
  @override
  bool get success;
  @override
  String get verificationStatus;

  /// Create a copy of FaceMatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceMatchEntityImplCopyWith<_$FaceMatchEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
