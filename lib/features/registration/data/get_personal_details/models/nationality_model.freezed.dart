// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nationality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NationalityModel _$NationalityModelFromJson(Map<String, dynamic> json) {
  return _NationalityModel.fromJson(json);
}

/// @nodoc
mixin _$NationalityModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nationality_name')
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;

  /// Serializes this NationalityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NationalityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NationalityModelCopyWith<NationalityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NationalityModelCopyWith<$Res> {
  factory $NationalityModelCopyWith(
          NationalityModel value, $Res Function(NationalityModel) then) =
      _$NationalityModelCopyWithImpl<$Res, NationalityModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nationality_name') String name,
      String description,
      @JsonKey(name: 'auth_status') String authStatus});
}

/// @nodoc
class _$NationalityModelCopyWithImpl<$Res, $Val extends NationalityModel>
    implements $NationalityModelCopyWith<$Res> {
  _$NationalityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NationalityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NationalityModelImplCopyWith<$Res>
    implements $NationalityModelCopyWith<$Res> {
  factory _$$NationalityModelImplCopyWith(_$NationalityModelImpl value,
          $Res Function(_$NationalityModelImpl) then) =
      __$$NationalityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nationality_name') String name,
      String description,
      @JsonKey(name: 'auth_status') String authStatus});
}

/// @nodoc
class __$$NationalityModelImplCopyWithImpl<$Res>
    extends _$NationalityModelCopyWithImpl<$Res, _$NationalityModelImpl>
    implements _$$NationalityModelImplCopyWith<$Res> {
  __$$NationalityModelImplCopyWithImpl(_$NationalityModelImpl _value,
      $Res Function(_$NationalityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NationalityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? authStatus = null,
  }) {
    return _then(_$NationalityModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NationalityModelImpl implements _NationalityModel {
  const _$NationalityModelImpl(
      {required this.id,
      @JsonKey(name: 'nationality_name') required this.name,
      required this.description,
      @JsonKey(name: 'auth_status') required this.authStatus});

  factory _$NationalityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NationalityModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'nationality_name')
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'auth_status')
  final String authStatus;

  @override
  String toString() {
    return 'NationalityModel(id: $id, name: $name, description: $description, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NationalityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, authStatus);

  /// Create a copy of NationalityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NationalityModelImplCopyWith<_$NationalityModelImpl> get copyWith =>
      __$$NationalityModelImplCopyWithImpl<_$NationalityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NationalityModelImplToJson(
      this,
    );
  }
}

abstract class _NationalityModel implements NationalityModel {
  const factory _NationalityModel(
          {required final int id,
          @JsonKey(name: 'nationality_name') required final String name,
          required final String description,
          @JsonKey(name: 'auth_status') required final String authStatus}) =
      _$NationalityModelImpl;

  factory _NationalityModel.fromJson(Map<String, dynamic> json) =
      _$NationalityModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nationality_name')
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'auth_status')
  String get authStatus;

  /// Create a copy of NationalityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NationalityModelImplCopyWith<_$NationalityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
