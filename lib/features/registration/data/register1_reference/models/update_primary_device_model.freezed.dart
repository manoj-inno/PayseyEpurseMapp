// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_primary_device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePrimaryDeviceModel _$UpdatePrimaryDeviceModelFromJson(
    Map<String, dynamic> json) {
  return _UpdatePrimaryDeviceModel.fromJson(json);
}

/// @nodoc
mixin _$UpdatePrimaryDeviceModel {
  String get refNumber => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this UpdatePrimaryDeviceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePrimaryDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePrimaryDeviceModelCopyWith<UpdatePrimaryDeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePrimaryDeviceModelCopyWith<$Res> {
  factory $UpdatePrimaryDeviceModelCopyWith(UpdatePrimaryDeviceModel value,
          $Res Function(UpdatePrimaryDeviceModel) then) =
      _$UpdatePrimaryDeviceModelCopyWithImpl<$Res, UpdatePrimaryDeviceModel>;
  @useResult
  $Res call({String refNumber, String deviceId, String message});
}

/// @nodoc
class _$UpdatePrimaryDeviceModelCopyWithImpl<$Res,
        $Val extends UpdatePrimaryDeviceModel>
    implements $UpdatePrimaryDeviceModelCopyWith<$Res> {
  _$UpdatePrimaryDeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePrimaryDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? deviceId = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePrimaryDeviceModelImplCopyWith<$Res>
    implements $UpdatePrimaryDeviceModelCopyWith<$Res> {
  factory _$$UpdatePrimaryDeviceModelImplCopyWith(
          _$UpdatePrimaryDeviceModelImpl value,
          $Res Function(_$UpdatePrimaryDeviceModelImpl) then) =
      __$$UpdatePrimaryDeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refNumber, String deviceId, String message});
}

/// @nodoc
class __$$UpdatePrimaryDeviceModelImplCopyWithImpl<$Res>
    extends _$UpdatePrimaryDeviceModelCopyWithImpl<$Res,
        _$UpdatePrimaryDeviceModelImpl>
    implements _$$UpdatePrimaryDeviceModelImplCopyWith<$Res> {
  __$$UpdatePrimaryDeviceModelImplCopyWithImpl(
      _$UpdatePrimaryDeviceModelImpl _value,
      $Res Function(_$UpdatePrimaryDeviceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePrimaryDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? deviceId = null,
    Object? message = null,
  }) {
    return _then(_$UpdatePrimaryDeviceModelImpl(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePrimaryDeviceModelImpl implements _UpdatePrimaryDeviceModel {
  const _$UpdatePrimaryDeviceModelImpl(
      {this.refNumber = '', this.deviceId = '', this.message = ''});

  factory _$UpdatePrimaryDeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePrimaryDeviceModelImplFromJson(json);

  @override
  @JsonKey()
  final String refNumber;
  @override
  @JsonKey()
  final String deviceId;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'UpdatePrimaryDeviceModel(refNumber: $refNumber, deviceId: $deviceId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrimaryDeviceModelImpl &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refNumber, deviceId, message);

  /// Create a copy of UpdatePrimaryDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrimaryDeviceModelImplCopyWith<_$UpdatePrimaryDeviceModelImpl>
      get copyWith => __$$UpdatePrimaryDeviceModelImplCopyWithImpl<
          _$UpdatePrimaryDeviceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePrimaryDeviceModelImplToJson(
      this,
    );
  }
}

abstract class _UpdatePrimaryDeviceModel implements UpdatePrimaryDeviceModel {
  const factory _UpdatePrimaryDeviceModel(
      {final String refNumber,
      final String deviceId,
      final String message}) = _$UpdatePrimaryDeviceModelImpl;

  factory _UpdatePrimaryDeviceModel.fromJson(Map<String, dynamic> json) =
      _$UpdatePrimaryDeviceModelImpl.fromJson;

  @override
  String get refNumber;
  @override
  String get deviceId;
  @override
  String get message;

  /// Create a copy of UpdatePrimaryDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrimaryDeviceModelImplCopyWith<_$UpdatePrimaryDeviceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
