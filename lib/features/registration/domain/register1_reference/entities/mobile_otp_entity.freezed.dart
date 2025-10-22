// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileOtpEntity _$MobileOtpEntityFromJson(Map<String, dynamic> json) {
  return _MobileOtpEntity.fromJson(json);
}

/// @nodoc
mixin _$MobileOtpEntity {
  String get otp => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this MobileOtpEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobileOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobileOtpEntityCopyWith<MobileOtpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileOtpEntityCopyWith<$Res> {
  factory $MobileOtpEntityCopyWith(
          MobileOtpEntity value, $Res Function(MobileOtpEntity) then) =
      _$MobileOtpEntityCopyWithImpl<$Res, MobileOtpEntity>;
  @useResult
  $Res call({String otp, String message, String status});
}

/// @nodoc
class _$MobileOtpEntityCopyWithImpl<$Res, $Val extends MobileOtpEntity>
    implements $MobileOtpEntityCopyWith<$Res> {
  _$MobileOtpEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileOtpEntityImplCopyWith<$Res>
    implements $MobileOtpEntityCopyWith<$Res> {
  factory _$$MobileOtpEntityImplCopyWith(_$MobileOtpEntityImpl value,
          $Res Function(_$MobileOtpEntityImpl) then) =
      __$$MobileOtpEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String message, String status});
}

/// @nodoc
class __$$MobileOtpEntityImplCopyWithImpl<$Res>
    extends _$MobileOtpEntityCopyWithImpl<$Res, _$MobileOtpEntityImpl>
    implements _$$MobileOtpEntityImplCopyWith<$Res> {
  __$$MobileOtpEntityImplCopyWithImpl(
      _$MobileOtpEntityImpl _value, $Res Function(_$MobileOtpEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$MobileOtpEntityImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileOtpEntityImpl implements _MobileOtpEntity {
  const _$MobileOtpEntityImpl(
      {required this.otp, required this.message, required this.status});

  factory _$MobileOtpEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileOtpEntityImplFromJson(json);

  @override
  final String otp;
  @override
  final String message;
  @override
  final String status;

  @override
  String toString() {
    return 'MobileOtpEntity(otp: $otp, message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileOtpEntityImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp, message, status);

  /// Create a copy of MobileOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileOtpEntityImplCopyWith<_$MobileOtpEntityImpl> get copyWith =>
      __$$MobileOtpEntityImplCopyWithImpl<_$MobileOtpEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileOtpEntityImplToJson(
      this,
    );
  }
}

abstract class _MobileOtpEntity implements MobileOtpEntity {
  const factory _MobileOtpEntity(
      {required final String otp,
      required final String message,
      required final String status}) = _$MobileOtpEntityImpl;

  factory _MobileOtpEntity.fromJson(Map<String, dynamic> json) =
      _$MobileOtpEntityImpl.fromJson;

  @override
  String get otp;
  @override
  String get message;
  @override
  String get status;

  /// Create a copy of MobileOtpEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileOtpEntityImplCopyWith<_$MobileOtpEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
