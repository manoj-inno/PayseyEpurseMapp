// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qualification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QualificationModel _$QualificationModelFromJson(Map<String, dynamic> json) {
  return _QualificationModel.fromJson(json);
}

/// @nodoc
mixin _$QualificationModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'qualification_name')
  String get qualificationName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this QualificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QualificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QualificationModelCopyWith<QualificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationModelCopyWith<$Res> {
  factory $QualificationModelCopyWith(
          QualificationModel value, $Res Function(QualificationModel) then) =
      _$QualificationModelCopyWithImpl<$Res, QualificationModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'qualification_name') String qualificationName,
      String description});
}

/// @nodoc
class _$QualificationModelCopyWithImpl<$Res, $Val extends QualificationModel>
    implements $QualificationModelCopyWith<$Res> {
  _$QualificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QualificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qualificationName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qualificationName: null == qualificationName
          ? _value.qualificationName
          : qualificationName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QualificationModelImplCopyWith<$Res>
    implements $QualificationModelCopyWith<$Res> {
  factory _$$QualificationModelImplCopyWith(_$QualificationModelImpl value,
          $Res Function(_$QualificationModelImpl) then) =
      __$$QualificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'qualification_name') String qualificationName,
      String description});
}

/// @nodoc
class __$$QualificationModelImplCopyWithImpl<$Res>
    extends _$QualificationModelCopyWithImpl<$Res, _$QualificationModelImpl>
    implements _$$QualificationModelImplCopyWith<$Res> {
  __$$QualificationModelImplCopyWithImpl(_$QualificationModelImpl _value,
      $Res Function(_$QualificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QualificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qualificationName = null,
    Object? description = null,
  }) {
    return _then(_$QualificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qualificationName: null == qualificationName
          ? _value.qualificationName
          : qualificationName // ignore: cast_nullable_to_non_nullable
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
class _$QualificationModelImpl implements _QualificationModel {
  const _$QualificationModelImpl(
      {required this.id,
      @JsonKey(name: 'qualification_name') required this.qualificationName,
      required this.description});

  factory _$QualificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QualificationModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'qualification_name')
  final String qualificationName;
  @override
  final String description;

  @override
  String toString() {
    return 'QualificationModel(id: $id, qualificationName: $qualificationName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qualificationName, qualificationName) ||
                other.qualificationName == qualificationName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, qualificationName, description);

  /// Create a copy of QualificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QualificationModelImplCopyWith<_$QualificationModelImpl> get copyWith =>
      __$$QualificationModelImplCopyWithImpl<_$QualificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QualificationModelImplToJson(
      this,
    );
  }
}

abstract class _QualificationModel implements QualificationModel {
  const factory _QualificationModel(
      {required final int id,
      @JsonKey(name: 'qualification_name')
      required final String qualificationName,
      required final String description}) = _$QualificationModelImpl;

  factory _QualificationModel.fromJson(Map<String, dynamic> json) =
      _$QualificationModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'qualification_name')
  String get qualificationName;
  @override
  String get description;

  /// Create a copy of QualificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QualificationModelImplCopyWith<_$QualificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
