// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountTypeEntity _$AccountTypeEntityFromJson(Map<String, dynamic> json) {
  return _AccountTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$AccountTypeEntity {
  int get id => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this AccountTypeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountTypeEntityCopyWith<AccountTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTypeEntityCopyWith<$Res> {
  factory $AccountTypeEntityCopyWith(
          AccountTypeEntity value, $Res Function(AccountTypeEntity) then) =
      _$AccountTypeEntityCopyWithImpl<$Res, AccountTypeEntity>;
  @useResult
  $Res call({int id, String typeName, String description, int status});
}

/// @nodoc
class _$AccountTypeEntityCopyWithImpl<$Res, $Val extends AccountTypeEntity>
    implements $AccountTypeEntityCopyWith<$Res> {
  _$AccountTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountTypeEntityImplCopyWith<$Res>
    implements $AccountTypeEntityCopyWith<$Res> {
  factory _$$AccountTypeEntityImplCopyWith(_$AccountTypeEntityImpl value,
          $Res Function(_$AccountTypeEntityImpl) then) =
      __$$AccountTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String typeName, String description, int status});
}

/// @nodoc
class __$$AccountTypeEntityImplCopyWithImpl<$Res>
    extends _$AccountTypeEntityCopyWithImpl<$Res, _$AccountTypeEntityImpl>
    implements _$$AccountTypeEntityImplCopyWith<$Res> {
  __$$AccountTypeEntityImplCopyWithImpl(_$AccountTypeEntityImpl _value,
      $Res Function(_$AccountTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_$AccountTypeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountTypeEntityImpl implements _AccountTypeEntity {
  const _$AccountTypeEntityImpl(
      {required this.id,
      required this.typeName,
      required this.description,
      required this.status});

  factory _$AccountTypeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountTypeEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String typeName;
  @override
  final String description;
  @override
  final int status;

  @override
  String toString() {
    return 'AccountTypeEntity(id: $id, typeName: $typeName, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, typeName, description, status);

  /// Create a copy of AccountTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountTypeEntityImplCopyWith<_$AccountTypeEntityImpl> get copyWith =>
      __$$AccountTypeEntityImplCopyWithImpl<_$AccountTypeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountTypeEntityImplToJson(
      this,
    );
  }
}

abstract class _AccountTypeEntity implements AccountTypeEntity {
  const factory _AccountTypeEntity(
      {required final int id,
      required final String typeName,
      required final String description,
      required final int status}) = _$AccountTypeEntityImpl;

  factory _AccountTypeEntity.fromJson(Map<String, dynamic> json) =
      _$AccountTypeEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get typeName;
  @override
  String get description;
  @override
  int get status;

  /// Create a copy of AccountTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountTypeEntityImplCopyWith<_$AccountTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
