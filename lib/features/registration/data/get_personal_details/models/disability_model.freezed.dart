// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disability_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisabilityModel _$DisabilityModelFromJson(Map<String, dynamic> json) {
  return _DisabilityModel.fromJson(json);
}

/// @nodoc
mixin _$DisabilityModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'disability_name')
  String get disabilityName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this DisabilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisabilityModelCopyWith<DisabilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisabilityModelCopyWith<$Res> {
  factory $DisabilityModelCopyWith(
          DisabilityModel value, $Res Function(DisabilityModel) then) =
      _$DisabilityModelCopyWithImpl<$Res, DisabilityModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'disability_name') String disabilityName,
      String description});
}

/// @nodoc
class _$DisabilityModelCopyWithImpl<$Res, $Val extends DisabilityModel>
    implements $DisabilityModelCopyWith<$Res> {
  _$DisabilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? disabilityName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      disabilityName: null == disabilityName
          ? _value.disabilityName
          : disabilityName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisabilityModelImplCopyWith<$Res>
    implements $DisabilityModelCopyWith<$Res> {
  factory _$$DisabilityModelImplCopyWith(_$DisabilityModelImpl value,
          $Res Function(_$DisabilityModelImpl) then) =
      __$$DisabilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'disability_name') String disabilityName,
      String description});
}

/// @nodoc
class __$$DisabilityModelImplCopyWithImpl<$Res>
    extends _$DisabilityModelCopyWithImpl<$Res, _$DisabilityModelImpl>
    implements _$$DisabilityModelImplCopyWith<$Res> {
  __$$DisabilityModelImplCopyWithImpl(
      _$DisabilityModelImpl _value, $Res Function(_$DisabilityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? disabilityName = null,
    Object? description = null,
  }) {
    return _then(_$DisabilityModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      disabilityName: null == disabilityName
          ? _value.disabilityName
          : disabilityName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisabilityModelImpl implements _DisabilityModel {
  const _$DisabilityModelImpl(
      {required this.id,
      @JsonKey(name: 'disability_name') required this.disabilityName,
      required this.description});

  factory _$DisabilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisabilityModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'disability_name')
  final String disabilityName;
  @override
  final String description;

  @override
  String toString() {
    return 'DisabilityModel(id: $id, disabilityName: $disabilityName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabilityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.disabilityName, disabilityName) ||
                other.disabilityName == disabilityName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, disabilityName, description);

  /// Create a copy of DisabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisabilityModelImplCopyWith<_$DisabilityModelImpl> get copyWith =>
      __$$DisabilityModelImplCopyWithImpl<_$DisabilityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisabilityModelImplToJson(
      this,
    );
  }
}

abstract class _DisabilityModel implements DisabilityModel {
  const factory _DisabilityModel(
      {required final int id,
      @JsonKey(name: 'disability_name') required final String disabilityName,
      required final String description}) = _$DisabilityModelImpl;

  factory _DisabilityModel.fromJson(Map<String, dynamic> json) =
      _$DisabilityModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'disability_name')
  String get disabilityName;
  @override
  String get description;

  /// Create a copy of DisabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisabilityModelImplCopyWith<_$DisabilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
