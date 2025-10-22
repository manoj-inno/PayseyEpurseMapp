// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turnover_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TurnoverModel _$TurnoverModelFromJson(Map<String, dynamic> json) {
  return _TurnoverModel.fromJson(json);
}

/// @nodoc
mixin _$TurnoverModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'config_name')
  String get configName => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_value')
  int get minValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_value')
  int get maxValue => throw _privateConstructorUsedError;

  /// Serializes this TurnoverModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TurnoverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TurnoverModelCopyWith<TurnoverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TurnoverModelCopyWith<$Res> {
  factory $TurnoverModelCopyWith(
          TurnoverModel value, $Res Function(TurnoverModel) then) =
      _$TurnoverModelCopyWithImpl<$Res, TurnoverModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'config_name') String configName,
      @JsonKey(name: 'min_value') int minValue,
      @JsonKey(name: 'max_value') int maxValue});
}

/// @nodoc
class _$TurnoverModelCopyWithImpl<$Res, $Val extends TurnoverModel>
    implements $TurnoverModelCopyWith<$Res> {
  _$TurnoverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TurnoverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? configName = null,
    Object? minValue = null,
    Object? maxValue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      configName: null == configName
          ? _value.configName
          : configName // ignore: cast_nullable_to_non_nullable
              as String,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TurnoverModelImplCopyWith<$Res>
    implements $TurnoverModelCopyWith<$Res> {
  factory _$$TurnoverModelImplCopyWith(
          _$TurnoverModelImpl value, $Res Function(_$TurnoverModelImpl) then) =
      __$$TurnoverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'config_name') String configName,
      @JsonKey(name: 'min_value') int minValue,
      @JsonKey(name: 'max_value') int maxValue});
}

/// @nodoc
class __$$TurnoverModelImplCopyWithImpl<$Res>
    extends _$TurnoverModelCopyWithImpl<$Res, _$TurnoverModelImpl>
    implements _$$TurnoverModelImplCopyWith<$Res> {
  __$$TurnoverModelImplCopyWithImpl(
      _$TurnoverModelImpl _value, $Res Function(_$TurnoverModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TurnoverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? configName = null,
    Object? minValue = null,
    Object? maxValue = null,
  }) {
    return _then(_$TurnoverModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      configName: null == configName
          ? _value.configName
          : configName // ignore: cast_nullable_to_non_nullable
              as String,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TurnoverModelImpl implements _TurnoverModel {
  const _$TurnoverModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'config_name') required this.configName,
      @JsonKey(name: 'min_value') required this.minValue,
      @JsonKey(name: 'max_value') required this.maxValue});

  factory _$TurnoverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TurnoverModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'config_name')
  final String configName;
  @override
  @JsonKey(name: 'min_value')
  final int minValue;
  @override
  @JsonKey(name: 'max_value')
  final int maxValue;

  @override
  String toString() {
    return 'TurnoverModel(id: $id, configName: $configName, minValue: $minValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TurnoverModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.configName, configName) ||
                other.configName == configName) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, configName, minValue, maxValue);

  /// Create a copy of TurnoverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TurnoverModelImplCopyWith<_$TurnoverModelImpl> get copyWith =>
      __$$TurnoverModelImplCopyWithImpl<_$TurnoverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TurnoverModelImplToJson(
      this,
    );
  }
}

abstract class _TurnoverModel implements TurnoverModel {
  const factory _TurnoverModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'config_name') required final String configName,
          @JsonKey(name: 'min_value') required final int minValue,
          @JsonKey(name: 'max_value') required final int maxValue}) =
      _$TurnoverModelImpl;

  factory _TurnoverModel.fromJson(Map<String, dynamic> json) =
      _$TurnoverModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'config_name')
  String get configName;
  @override
  @JsonKey(name: 'min_value')
  int get minValue;
  @override
  @JsonKey(name: 'max_value')
  int get maxValue;

  /// Create a copy of TurnoverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TurnoverModelImplCopyWith<_$TurnoverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
