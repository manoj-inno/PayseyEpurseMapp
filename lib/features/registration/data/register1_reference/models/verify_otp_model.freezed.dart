// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpModel _$VerifyOtpModelFromJson(Map<String, dynamic> json) {
  return _VerifyOtpModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpModel {
  String get refNumber => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this VerifyOtpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpModelCopyWith<VerifyOtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpModelCopyWith<$Res> {
  factory $VerifyOtpModelCopyWith(
          VerifyOtpModel value, $Res Function(VerifyOtpModel) then) =
      _$VerifyOtpModelCopyWithImpl<$Res, VerifyOtpModel>;
  @useResult
  $Res call({String refNumber, String message});
}

/// @nodoc
class _$VerifyOtpModelCopyWithImpl<$Res, $Val extends VerifyOtpModel>
    implements $VerifyOtpModelCopyWith<$Res> {
  _$VerifyOtpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpModelImplCopyWith<$Res>
    implements $VerifyOtpModelCopyWith<$Res> {
  factory _$$VerifyOtpModelImplCopyWith(_$VerifyOtpModelImpl value,
          $Res Function(_$VerifyOtpModelImpl) then) =
      __$$VerifyOtpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refNumber, String message});
}

/// @nodoc
class __$$VerifyOtpModelImplCopyWithImpl<$Res>
    extends _$VerifyOtpModelCopyWithImpl<$Res, _$VerifyOtpModelImpl>
    implements _$$VerifyOtpModelImplCopyWith<$Res> {
  __$$VerifyOtpModelImplCopyWithImpl(
      _$VerifyOtpModelImpl _value, $Res Function(_$VerifyOtpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? message = null,
  }) {
    return _then(_$VerifyOtpModelImpl(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpModelImpl implements _VerifyOtpModel {
  const _$VerifyOtpModelImpl({this.refNumber = '', this.message = ''});

  factory _$VerifyOtpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpModelImplFromJson(json);

  @override
  @JsonKey()
  final String refNumber;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'VerifyOtpModel(refNumber: $refNumber, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpModelImpl &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refNumber, message);

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpModelImplCopyWith<_$VerifyOtpModelImpl> get copyWith =>
      __$$VerifyOtpModelImplCopyWithImpl<_$VerifyOtpModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpModel implements VerifyOtpModel {
  const factory _VerifyOtpModel(
      {final String refNumber, final String message}) = _$VerifyOtpModelImpl;

  factory _VerifyOtpModel.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpModelImpl.fromJson;

  @override
  String get refNumber;
  @override
  String get message;

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpModelImplCopyWith<_$VerifyOtpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
