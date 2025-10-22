// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turnover_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TurnoverEntity _$TurnoverEntityFromJson(Map<String, dynamic> json) {
  return _TurnoverEntity.fromJson(json);
}

/// @nodoc
mixin _$TurnoverEntity {
  int get id => throw _privateConstructorUsedError;
  String get configName => throw _privateConstructorUsedError;
  int get minValue => throw _privateConstructorUsedError;
  int get maxValue => throw _privateConstructorUsedError;

  /// Serializes this TurnoverEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TurnoverEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TurnoverEntityCopyWith<TurnoverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TurnoverEntityCopyWith<$Res> {
  factory $TurnoverEntityCopyWith(
          TurnoverEntity value, $Res Function(TurnoverEntity) then) =
      _$TurnoverEntityCopyWithImpl<$Res, TurnoverEntity>;
  @useResult
  $Res call({int id, String configName, int minValue, int maxValue});
}

/// @nodoc
class _$TurnoverEntityCopyWithImpl<$Res, $Val extends TurnoverEntity>
    implements $TurnoverEntityCopyWith<$Res> {
  _$TurnoverEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TurnoverEntity
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
abstract class _$$TurnoverEntityImplCopyWith<$Res>
    implements $TurnoverEntityCopyWith<$Res> {
  factory _$$TurnoverEntityImplCopyWith(_$TurnoverEntityImpl value,
          $Res Function(_$TurnoverEntityImpl) then) =
      __$$TurnoverEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String configName, int minValue, int maxValue});
}

/// @nodoc
class __$$TurnoverEntityImplCopyWithImpl<$Res>
    extends _$TurnoverEntityCopyWithImpl<$Res, _$TurnoverEntityImpl>
    implements _$$TurnoverEntityImplCopyWith<$Res> {
  __$$TurnoverEntityImplCopyWithImpl(
      _$TurnoverEntityImpl _value, $Res Function(_$TurnoverEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TurnoverEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? configName = null,
    Object? minValue = null,
    Object? maxValue = null,
  }) {
    return _then(_$TurnoverEntityImpl(
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
class _$TurnoverEntityImpl implements _TurnoverEntity {
  const _$TurnoverEntityImpl(
      {required this.id,
      required this.configName,
      required this.minValue,
      required this.maxValue});

  factory _$TurnoverEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TurnoverEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String configName;
  @override
  final int minValue;
  @override
  final int maxValue;

  @override
  String toString() {
    return 'TurnoverEntity(id: $id, configName: $configName, minValue: $minValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TurnoverEntityImpl &&
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

  /// Create a copy of TurnoverEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TurnoverEntityImplCopyWith<_$TurnoverEntityImpl> get copyWith =>
      __$$TurnoverEntityImplCopyWithImpl<_$TurnoverEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TurnoverEntityImplToJson(
      this,
    );
  }
}

abstract class _TurnoverEntity implements TurnoverEntity {
  const factory _TurnoverEntity(
      {required final int id,
      required final String configName,
      required final int minValue,
      required final int maxValue}) = _$TurnoverEntityImpl;

  factory _TurnoverEntity.fromJson(Map<String, dynamic> json) =
      _$TurnoverEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get configName;
  @override
  int get minValue;
  @override
  int get maxValue;

  /// Create a copy of TurnoverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TurnoverEntityImplCopyWith<_$TurnoverEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
