// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileOtpModel _$MobileOtpModelFromJson(Map<String, dynamic> json) {
  return _MobileOtpModel.fromJson(json);
}

/// @nodoc
mixin _$MobileOtpModel {
  String get otp => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this MobileOtpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobileOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobileOtpModelCopyWith<MobileOtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileOtpModelCopyWith<$Res> {
  factory $MobileOtpModelCopyWith(
          MobileOtpModel value, $Res Function(MobileOtpModel) then) =
      _$MobileOtpModelCopyWithImpl<$Res, MobileOtpModel>;
  @useResult
  $Res call({String otp, String message, String status});
}

/// @nodoc
class _$MobileOtpModelCopyWithImpl<$Res, $Val extends MobileOtpModel>
    implements $MobileOtpModelCopyWith<$Res> {
  _$MobileOtpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileOtpModel
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
abstract class _$$MobileOtpModelImplCopyWith<$Res>
    implements $MobileOtpModelCopyWith<$Res> {
  factory _$$MobileOtpModelImplCopyWith(_$MobileOtpModelImpl value,
          $Res Function(_$MobileOtpModelImpl) then) =
      __$$MobileOtpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String message, String status});
}

/// @nodoc
class __$$MobileOtpModelImplCopyWithImpl<$Res>
    extends _$MobileOtpModelCopyWithImpl<$Res, _$MobileOtpModelImpl>
    implements _$$MobileOtpModelImplCopyWith<$Res> {
  __$$MobileOtpModelImplCopyWithImpl(
      _$MobileOtpModelImpl _value, $Res Function(_$MobileOtpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$MobileOtpModelImpl(
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
class _$MobileOtpModelImpl implements _MobileOtpModel {
  const _$MobileOtpModelImpl(
      {this.otp = '', this.message = '', this.status = ''});

  factory _$MobileOtpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileOtpModelImplFromJson(json);

  @override
  @JsonKey()
  final String otp;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'MobileOtpModel(otp: $otp, message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileOtpModelImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp, message, status);

  /// Create a copy of MobileOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileOtpModelImplCopyWith<_$MobileOtpModelImpl> get copyWith =>
      __$$MobileOtpModelImplCopyWithImpl<_$MobileOtpModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileOtpModelImplToJson(
      this,
    );
  }
}

abstract class _MobileOtpModel implements MobileOtpModel {
  const factory _MobileOtpModel(
      {final String otp,
      final String message,
      final String status}) = _$MobileOtpModelImpl;

  factory _MobileOtpModel.fromJson(Map<String, dynamic> json) =
      _$MobileOtpModelImpl.fromJson;

  @override
  String get otp;
  @override
  String get message;
  @override
  String get status;

  /// Create a copy of MobileOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileOtpModelImplCopyWith<_$MobileOtpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
