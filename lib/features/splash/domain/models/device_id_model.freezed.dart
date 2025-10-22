// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceIdModel _$DeviceIdModelFromJson(Map<String, dynamic> json) {
  return _DeviceIdModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceIdModel {
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_model')
  String get deviceModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_manufacturer')
  String get deviceManufacturer => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_os')
  String get deviceOS => throw _privateConstructorUsedError;

  /// Serializes this DeviceIdModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceIdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceIdModelCopyWith<DeviceIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceIdModelCopyWith<$Res> {
  factory $DeviceIdModelCopyWith(
          DeviceIdModel value, $Res Function(DeviceIdModel) then) =
      _$DeviceIdModelCopyWithImpl<$Res, DeviceIdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'device_model') String deviceModel,
      @JsonKey(name: 'device_manufacturer') String deviceManufacturer,
      @JsonKey(name: 'device_os') String deviceOS});
}

/// @nodoc
class _$DeviceIdModelCopyWithImpl<$Res, $Val extends DeviceIdModel>
    implements $DeviceIdModelCopyWith<$Res> {
  _$DeviceIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceIdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceModel = null,
    Object? deviceManufacturer = null,
    Object? deviceOS = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: null == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      deviceManufacturer: null == deviceManufacturer
          ? _value.deviceManufacturer
          : deviceManufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      deviceOS: null == deviceOS
          ? _value.deviceOS
          : deviceOS // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceIdModelImplCopyWith<$Res>
    implements $DeviceIdModelCopyWith<$Res> {
  factory _$$DeviceIdModelImplCopyWith(
          _$DeviceIdModelImpl value, $Res Function(_$DeviceIdModelImpl) then) =
      __$$DeviceIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'device_model') String deviceModel,
      @JsonKey(name: 'device_manufacturer') String deviceManufacturer,
      @JsonKey(name: 'device_os') String deviceOS});
}

/// @nodoc
class __$$DeviceIdModelImplCopyWithImpl<$Res>
    extends _$DeviceIdModelCopyWithImpl<$Res, _$DeviceIdModelImpl>
    implements _$$DeviceIdModelImplCopyWith<$Res> {
  __$$DeviceIdModelImplCopyWithImpl(
      _$DeviceIdModelImpl _value, $Res Function(_$DeviceIdModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceIdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceModel = null,
    Object? deviceManufacturer = null,
    Object? deviceOS = null,
  }) {
    return _then(_$DeviceIdModelImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: null == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      deviceManufacturer: null == deviceManufacturer
          ? _value.deviceManufacturer
          : deviceManufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      deviceOS: null == deviceOS
          ? _value.deviceOS
          : deviceOS // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceIdModelImpl implements _DeviceIdModel {
  const _$DeviceIdModelImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'device_model') required this.deviceModel,
      @JsonKey(name: 'device_manufacturer') required this.deviceManufacturer,
      @JsonKey(name: 'device_os') required this.deviceOS});

  factory _$DeviceIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceIdModelImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  @override
  @JsonKey(name: 'device_model')
  final String deviceModel;
  @override
  @JsonKey(name: 'device_manufacturer')
  final String deviceManufacturer;
  @override
  @JsonKey(name: 'device_os')
  final String deviceOS;

  @override
  String toString() {
    return 'DeviceIdModel(deviceId: $deviceId, deviceModel: $deviceModel, deviceManufacturer: $deviceManufacturer, deviceOS: $deviceOS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceIdModelImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceManufacturer, deviceManufacturer) ||
                other.deviceManufacturer == deviceManufacturer) &&
            (identical(other.deviceOS, deviceOS) ||
                other.deviceOS == deviceOS));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceId, deviceModel, deviceManufacturer, deviceOS);

  /// Create a copy of DeviceIdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceIdModelImplCopyWith<_$DeviceIdModelImpl> get copyWith =>
      __$$DeviceIdModelImplCopyWithImpl<_$DeviceIdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceIdModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceIdModel implements DeviceIdModel {
  const factory _DeviceIdModel(
          {@JsonKey(name: 'device_id') required final String deviceId,
          @JsonKey(name: 'device_model') required final String deviceModel,
          @JsonKey(name: 'device_manufacturer')
          required final String deviceManufacturer,
          @JsonKey(name: 'device_os') required final String deviceOS}) =
      _$DeviceIdModelImpl;

  factory _DeviceIdModel.fromJson(Map<String, dynamic> json) =
      _$DeviceIdModelImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(name: 'device_model')
  String get deviceModel;
  @override
  @JsonKey(name: 'device_manufacturer')
  String get deviceManufacturer;
  @override
  @JsonKey(name: 'device_os')
  String get deviceOS;

  /// Create a copy of DeviceIdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceIdModelImplCopyWith<_$DeviceIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
