// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileOtpVerificationEntity _$MobileOtpVerificationEntityFromJson(
    Map<String, dynamic> json) {
  return _MobileOtpVerificationEntity.fromJson(json);
}

/// @nodoc
mixin _$MobileOtpVerificationEntity {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;

  /// Serializes this MobileOtpVerificationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobileOtpVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobileOtpVerificationEntityCopyWith<MobileOtpVerificationEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileOtpVerificationEntityCopyWith<$Res> {
  factory $MobileOtpVerificationEntityCopyWith(
          MobileOtpVerificationEntity value,
          $Res Function(MobileOtpVerificationEntity) then) =
      _$MobileOtpVerificationEntityCopyWithImpl<$Res,
          MobileOtpVerificationEntity>;
  @useResult
  $Res call({int code, String message, String status, String mobile});
}

/// @nodoc
class _$MobileOtpVerificationEntityCopyWithImpl<$Res,
        $Val extends MobileOtpVerificationEntity>
    implements $MobileOtpVerificationEntityCopyWith<$Res> {
  _$MobileOtpVerificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileOtpVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? status = null,
    Object? mobile = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileOtpVerificationEntityImplCopyWith<$Res>
    implements $MobileOtpVerificationEntityCopyWith<$Res> {
  factory _$$MobileOtpVerificationEntityImplCopyWith(
          _$MobileOtpVerificationEntityImpl value,
          $Res Function(_$MobileOtpVerificationEntityImpl) then) =
      __$$MobileOtpVerificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, String status, String mobile});
}

/// @nodoc
class __$$MobileOtpVerificationEntityImplCopyWithImpl<$Res>
    extends _$MobileOtpVerificationEntityCopyWithImpl<$Res,
        _$MobileOtpVerificationEntityImpl>
    implements _$$MobileOtpVerificationEntityImplCopyWith<$Res> {
  __$$MobileOtpVerificationEntityImplCopyWithImpl(
      _$MobileOtpVerificationEntityImpl _value,
      $Res Function(_$MobileOtpVerificationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileOtpVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? status = null,
    Object? mobile = null,
  }) {
    return _then(_$MobileOtpVerificationEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileOtpVerificationEntityImpl
    implements _MobileOtpVerificationEntity {
  const _$MobileOtpVerificationEntityImpl(
      {required this.code,
      required this.message,
      required this.status,
      required this.mobile});

  factory _$MobileOtpVerificationEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MobileOtpVerificationEntityImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final String status;
  @override
  final String mobile;

  @override
  String toString() {
    return 'MobileOtpVerificationEntity(code: $code, message: $message, status: $status, mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileOtpVerificationEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, status, mobile);

  /// Create a copy of MobileOtpVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileOtpVerificationEntityImplCopyWith<_$MobileOtpVerificationEntityImpl>
      get copyWith => __$$MobileOtpVerificationEntityImplCopyWithImpl<
          _$MobileOtpVerificationEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileOtpVerificationEntityImplToJson(
      this,
    );
  }
}

abstract class _MobileOtpVerificationEntity
    implements MobileOtpVerificationEntity {
  const factory _MobileOtpVerificationEntity(
      {required final int code,
      required final String message,
      required final String status,
      required final String mobile}) = _$MobileOtpVerificationEntityImpl;

  factory _MobileOtpVerificationEntity.fromJson(Map<String, dynamic> json) =
      _$MobileOtpVerificationEntityImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  String get status;
  @override
  String get mobile;

  /// Create a copy of MobileOtpVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileOtpVerificationEntityImplCopyWith<_$MobileOtpVerificationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
