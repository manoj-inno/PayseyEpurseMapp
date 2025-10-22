// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'religion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReligionModel _$ReligionModelFromJson(Map<String, dynamic> json) {
  return _ReligionModel.fromJson(json);
}

/// @nodoc
mixin _$ReligionModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'religion_name')
  String get religionName => throw _privateConstructorUsedError;

  /// Serializes this ReligionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReligionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReligionModelCopyWith<ReligionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReligionModelCopyWith<$Res> {
  factory $ReligionModelCopyWith(
          ReligionModel value, $Res Function(ReligionModel) then) =
      _$ReligionModelCopyWithImpl<$Res, ReligionModel>;
  @useResult
  $Res call({int id, @JsonKey(name: 'religion_name') String religionName});
}

/// @nodoc
class _$ReligionModelCopyWithImpl<$Res, $Val extends ReligionModel>
    implements $ReligionModelCopyWith<$Res> {
  _$ReligionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReligionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? religionName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      religionName: null == religionName
          ? _value.religionName
          : religionName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReligionModelImplCopyWith<$Res>
    implements $ReligionModelCopyWith<$Res> {
  factory _$$ReligionModelImplCopyWith(
          _$ReligionModelImpl value, $Res Function(_$ReligionModelImpl) then) =
      __$$ReligionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'religion_name') String religionName});
}

/// @nodoc
class __$$ReligionModelImplCopyWithImpl<$Res>
    extends _$ReligionModelCopyWithImpl<$Res, _$ReligionModelImpl>
    implements _$$ReligionModelImplCopyWith<$Res> {
  __$$ReligionModelImplCopyWithImpl(
      _$ReligionModelImpl _value, $Res Function(_$ReligionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReligionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? religionName = null,
  }) {
    return _then(_$ReligionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      religionName: null == religionName
          ? _value.religionName
          : religionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReligionModelImpl implements _ReligionModel {
  const _$ReligionModelImpl(
      {required this.id,
      @JsonKey(name: 'religion_name') required this.religionName});

  factory _$ReligionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReligionModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'religion_name')
  final String religionName;

  @override
  String toString() {
    return 'ReligionModel(id: $id, religionName: $religionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReligionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.religionName, religionName) ||
                other.religionName == religionName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, religionName);

  /// Create a copy of ReligionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReligionModelImplCopyWith<_$ReligionModelImpl> get copyWith =>
      __$$ReligionModelImplCopyWithImpl<_$ReligionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReligionModelImplToJson(
      this,
    );
  }
}

abstract class _ReligionModel implements ReligionModel {
  const factory _ReligionModel(
          {required final int id,
          @JsonKey(name: 'religion_name') required final String religionName}) =
      _$ReligionModelImpl;

  factory _ReligionModel.fromJson(Map<String, dynamic> json) =
      _$ReligionModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'religion_name')
  String get religionName;

  /// Create a copy of ReligionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReligionModelImplCopyWith<_$ReligionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
