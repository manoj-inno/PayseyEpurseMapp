// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OccupationModel _$OccupationModelFromJson(Map<String, dynamic> json) {
  return _OccupationModel.fromJson(json);
}

/// @nodoc
mixin _$OccupationModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'occupation_name')
  String get occupationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Serializes this OccupationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OccupationModelCopyWith<OccupationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationModelCopyWith<$Res> {
  factory $OccupationModelCopyWith(
          OccupationModel value, $Res Function(OccupationModel) then) =
      _$OccupationModelCopyWithImpl<$Res, OccupationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'occupation_name') String occupationName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$OccupationModelCopyWithImpl<$Res, $Val extends OccupationModel>
    implements $OccupationModelCopyWith<$Res> {
  _$OccupationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? occupationName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      occupationName: null == occupationName
          ? _value.occupationName
          : occupationName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccupationModelImplCopyWith<$Res>
    implements $OccupationModelCopyWith<$Res> {
  factory _$$OccupationModelImplCopyWith(_$OccupationModelImpl value,
          $Res Function(_$OccupationModelImpl) then) =
      __$$OccupationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'occupation_name') String occupationName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$OccupationModelImplCopyWithImpl<$Res>
    extends _$OccupationModelCopyWithImpl<$Res, _$OccupationModelImpl>
    implements _$$OccupationModelImplCopyWith<$Res> {
  __$$OccupationModelImplCopyWithImpl(
      _$OccupationModelImpl _value, $Res Function(_$OccupationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? occupationName = null,
    Object? description = null,
  }) {
    return _then(_$OccupationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      occupationName: null == occupationName
          ? _value.occupationName
          : occupationName // ignore: cast_nullable_to_non_nullable
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
class _$OccupationModelImpl implements _OccupationModel {
  const _$OccupationModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'occupation_name') required this.occupationName,
      @JsonKey(name: 'description') required this.description});

  factory _$OccupationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccupationModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'occupation_name')
  final String occupationName;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'OccupationModel(id: $id, occupationName: $occupationName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccupationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.occupationName, occupationName) ||
                other.occupationName == occupationName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, occupationName, description);

  /// Create a copy of OccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OccupationModelImplCopyWith<_$OccupationModelImpl> get copyWith =>
      __$$OccupationModelImplCopyWithImpl<_$OccupationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccupationModelImplToJson(
      this,
    );
  }
}

abstract class _OccupationModel implements OccupationModel {
  const factory _OccupationModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'occupation_name') required final String occupationName,
      @JsonKey(name: 'description')
      required final String description}) = _$OccupationModelImpl;

  factory _OccupationModel.fromJson(Map<String, dynamic> json) =
      _$OccupationModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'occupation_name')
  String get occupationName;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of OccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OccupationModelImplCopyWith<_$OccupationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
