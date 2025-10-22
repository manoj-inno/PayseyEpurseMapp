// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_sub_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountSubTypeEntity _$AccountSubTypeEntityFromJson(Map<String, dynamic> json) {
  return _AccountSubTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$AccountSubTypeEntity {
  int get id => throw _privateConstructorUsedError;
  int get accountTypeId => throw _privateConstructorUsedError;
  int get customerTypeId => throw _privateConstructorUsedError;
  String get subtypeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this AccountSubTypeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSubTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSubTypeEntityCopyWith<AccountSubTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSubTypeEntityCopyWith<$Res> {
  factory $AccountSubTypeEntityCopyWith(AccountSubTypeEntity value,
          $Res Function(AccountSubTypeEntity) then) =
      _$AccountSubTypeEntityCopyWithImpl<$Res, AccountSubTypeEntity>;
  @useResult
  $Res call(
      {int id,
      int accountTypeId,
      int customerTypeId,
      String subtypeName,
      String description,
      int status});
}

/// @nodoc
class _$AccountSubTypeEntityCopyWithImpl<$Res,
        $Val extends AccountSubTypeEntity>
    implements $AccountSubTypeEntityCopyWith<$Res> {
  _$AccountSubTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSubTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountTypeId = null,
    Object? customerTypeId = null,
    Object? subtypeName = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountTypeId: null == accountTypeId
          ? _value.accountTypeId
          : accountTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      customerTypeId: null == customerTypeId
          ? _value.customerTypeId
          : customerTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      subtypeName: null == subtypeName
          ? _value.subtypeName
          : subtypeName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AccountSubTypeEntityImplCopyWith<$Res>
    implements $AccountSubTypeEntityCopyWith<$Res> {
  factory _$$AccountSubTypeEntityImplCopyWith(_$AccountSubTypeEntityImpl value,
          $Res Function(_$AccountSubTypeEntityImpl) then) =
      __$$AccountSubTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int accountTypeId,
      int customerTypeId,
      String subtypeName,
      String description,
      int status});
}

/// @nodoc
class __$$AccountSubTypeEntityImplCopyWithImpl<$Res>
    extends _$AccountSubTypeEntityCopyWithImpl<$Res, _$AccountSubTypeEntityImpl>
    implements _$$AccountSubTypeEntityImplCopyWith<$Res> {
  __$$AccountSubTypeEntityImplCopyWithImpl(_$AccountSubTypeEntityImpl _value,
      $Res Function(_$AccountSubTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountSubTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountTypeId = null,
    Object? customerTypeId = null,
    Object? subtypeName = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_$AccountSubTypeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountTypeId: null == accountTypeId
          ? _value.accountTypeId
          : accountTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      customerTypeId: null == customerTypeId
          ? _value.customerTypeId
          : customerTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      subtypeName: null == subtypeName
          ? _value.subtypeName
          : subtypeName // ignore: cast_nullable_to_non_nullable
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
class _$AccountSubTypeEntityImpl implements _AccountSubTypeEntity {
  const _$AccountSubTypeEntityImpl(
      {required this.id,
      required this.accountTypeId,
      required this.customerTypeId,
      required this.subtypeName,
      required this.description,
      required this.status});

  factory _$AccountSubTypeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSubTypeEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int accountTypeId;
  @override
  final int customerTypeId;
  @override
  final String subtypeName;
  @override
  final String description;
  @override
  final int status;

  @override
  String toString() {
    return 'AccountSubTypeEntity(id: $id, accountTypeId: $accountTypeId, customerTypeId: $customerTypeId, subtypeName: $subtypeName, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSubTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountTypeId, accountTypeId) ||
                other.accountTypeId == accountTypeId) &&
            (identical(other.customerTypeId, customerTypeId) ||
                other.customerTypeId == customerTypeId) &&
            (identical(other.subtypeName, subtypeName) ||
                other.subtypeName == subtypeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountTypeId,
      customerTypeId, subtypeName, description, status);

  /// Create a copy of AccountSubTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSubTypeEntityImplCopyWith<_$AccountSubTypeEntityImpl>
      get copyWith =>
          __$$AccountSubTypeEntityImplCopyWithImpl<_$AccountSubTypeEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSubTypeEntityImplToJson(
      this,
    );
  }
}

abstract class _AccountSubTypeEntity implements AccountSubTypeEntity {
  const factory _AccountSubTypeEntity(
      {required final int id,
      required final int accountTypeId,
      required final int customerTypeId,
      required final String subtypeName,
      required final String description,
      required final int status}) = _$AccountSubTypeEntityImpl;

  factory _AccountSubTypeEntity.fromJson(Map<String, dynamic> json) =
      _$AccountSubTypeEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get accountTypeId;
  @override
  int get customerTypeId;
  @override
  String get subtypeName;
  @override
  String get description;
  @override
  int get status;

  /// Create a copy of AccountSubTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSubTypeEntityImplCopyWith<_$AccountSubTypeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
