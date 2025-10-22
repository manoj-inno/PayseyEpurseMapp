// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_primary_device_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePrimaryDeviceEntity _$UpdatePrimaryDeviceEntityFromJson(
    Map<String, dynamic> json) {
  return _UpdatePrimaryDeviceEntity.fromJson(json);
}

/// @nodoc
mixin _$UpdatePrimaryDeviceEntity {
  String get refNumber => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this UpdatePrimaryDeviceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePrimaryDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePrimaryDeviceEntityCopyWith<UpdatePrimaryDeviceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePrimaryDeviceEntityCopyWith<$Res> {
  factory $UpdatePrimaryDeviceEntityCopyWith(UpdatePrimaryDeviceEntity value,
          $Res Function(UpdatePrimaryDeviceEntity) then) =
      _$UpdatePrimaryDeviceEntityCopyWithImpl<$Res, UpdatePrimaryDeviceEntity>;
  @useResult
  $Res call({String refNumber, String deviceId, String message});
}

/// @nodoc
class _$UpdatePrimaryDeviceEntityCopyWithImpl<$Res,
        $Val extends UpdatePrimaryDeviceEntity>
    implements $UpdatePrimaryDeviceEntityCopyWith<$Res> {
  _$UpdatePrimaryDeviceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePrimaryDeviceEntity
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
abstract class _$$UpdatePrimaryDeviceEntityImplCopyWith<$Res>
    implements $UpdatePrimaryDeviceEntityCopyWith<$Res> {
  factory _$$UpdatePrimaryDeviceEntityImplCopyWith(
          _$UpdatePrimaryDeviceEntityImpl value,
          $Res Function(_$UpdatePrimaryDeviceEntityImpl) then) =
      __$$UpdatePrimaryDeviceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refNumber, String deviceId, String message});
}

/// @nodoc
class __$$UpdatePrimaryDeviceEntityImplCopyWithImpl<$Res>
    extends _$UpdatePrimaryDeviceEntityCopyWithImpl<$Res,
        _$UpdatePrimaryDeviceEntityImpl>
    implements _$$UpdatePrimaryDeviceEntityImplCopyWith<$Res> {
  __$$UpdatePrimaryDeviceEntityImplCopyWithImpl(
      _$UpdatePrimaryDeviceEntityImpl _value,
      $Res Function(_$UpdatePrimaryDeviceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePrimaryDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? deviceId = null,
    Object? message = null,
  }) {
    return _then(_$UpdatePrimaryDeviceEntityImpl(
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
class _$UpdatePrimaryDeviceEntityImpl implements _UpdatePrimaryDeviceEntity {
  const _$UpdatePrimaryDeviceEntityImpl(
      {required this.refNumber, required this.deviceId, required this.message});

  factory _$UpdatePrimaryDeviceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePrimaryDeviceEntityImplFromJson(json);

  @override
  final String refNumber;
  @override
  final String deviceId;
  @override
  final String message;

  @override
  String toString() {
    return 'UpdatePrimaryDeviceEntity(refNumber: $refNumber, deviceId: $deviceId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrimaryDeviceEntityImpl &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refNumber, deviceId, message);

  /// Create a copy of UpdatePrimaryDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrimaryDeviceEntityImplCopyWith<_$UpdatePrimaryDeviceEntityImpl>
      get copyWith => __$$UpdatePrimaryDeviceEntityImplCopyWithImpl<
          _$UpdatePrimaryDeviceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePrimaryDeviceEntityImplToJson(
      this,
    );
  }
}

abstract class _UpdatePrimaryDeviceEntity implements UpdatePrimaryDeviceEntity {
  const factory _UpdatePrimaryDeviceEntity(
      {required final String refNumber,
      required final String deviceId,
      required final String message}) = _$UpdatePrimaryDeviceEntityImpl;

  factory _UpdatePrimaryDeviceEntity.fromJson(Map<String, dynamic> json) =
      _$UpdatePrimaryDeviceEntityImpl.fromJson;

  @override
  String get refNumber;
  @override
  String get deviceId;
  @override
  String get message;

  /// Create a copy of UpdatePrimaryDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrimaryDeviceEntityImplCopyWith<_$UpdatePrimaryDeviceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
