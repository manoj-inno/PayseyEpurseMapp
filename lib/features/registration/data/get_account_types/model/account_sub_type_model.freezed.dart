// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_sub_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountSubTypeModel _$AccountSubTypeModelFromJson(Map<String, dynamic> json) {
  return _AccountSubTypeModel.fromJson(json);
}

/// @nodoc
mixin _$AccountSubTypeModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_type_id')
  int get accountTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type_id')
  int get customerTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtype_name')
  String get subtypeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_time')
  String get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_time')
  String get authTime => throw _privateConstructorUsedError;

  /// Serializes this AccountSubTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSubTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSubTypeModelCopyWith<AccountSubTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSubTypeModelCopyWith<$Res> {
  factory $AccountSubTypeModelCopyWith(
          AccountSubTypeModel value, $Res Function(AccountSubTypeModel) then) =
      _$AccountSubTypeModelCopyWithImpl<$Res, AccountSubTypeModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'account_type_id') int accountTypeId,
      @JsonKey(name: 'customer_type_id') int customerTypeId,
      @JsonKey(name: 'subtype_name') String subtypeName,
      String description,
      int status,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') String createdTime,
      @JsonKey(name: 'auth_time') String authTime});
}

/// @nodoc
class _$AccountSubTypeModelCopyWithImpl<$Res, $Val extends AccountSubTypeModel>
    implements $AccountSubTypeModelCopyWith<$Res> {
  _$AccountSubTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSubTypeModel
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
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
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
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      authTime: null == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountSubTypeModelImplCopyWith<$Res>
    implements $AccountSubTypeModelCopyWith<$Res> {
  factory _$$AccountSubTypeModelImplCopyWith(_$AccountSubTypeModelImpl value,
          $Res Function(_$AccountSubTypeModelImpl) then) =
      __$$AccountSubTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'account_type_id') int accountTypeId,
      @JsonKey(name: 'customer_type_id') int customerTypeId,
      @JsonKey(name: 'subtype_name') String subtypeName,
      String description,
      int status,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') String createdTime,
      @JsonKey(name: 'auth_time') String authTime});
}

/// @nodoc
class __$$AccountSubTypeModelImplCopyWithImpl<$Res>
    extends _$AccountSubTypeModelCopyWithImpl<$Res, _$AccountSubTypeModelImpl>
    implements _$$AccountSubTypeModelImplCopyWith<$Res> {
  __$$AccountSubTypeModelImplCopyWithImpl(_$AccountSubTypeModelImpl _value,
      $Res Function(_$AccountSubTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountSubTypeModel
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
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
  }) {
    return _then(_$AccountSubTypeModelImpl(
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
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      authTime: null == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountSubTypeModelImpl implements _AccountSubTypeModel {
  const _$AccountSubTypeModelImpl(
      {required this.id,
      @JsonKey(name: 'account_type_id') required this.accountTypeId,
      @JsonKey(name: 'customer_type_id') required this.customerTypeId,
      @JsonKey(name: 'subtype_name') required this.subtypeName,
      required this.description,
      required this.status,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime});

  factory _$AccountSubTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSubTypeModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'account_type_id')
  final int accountTypeId;
  @override
  @JsonKey(name: 'customer_type_id')
  final int customerTypeId;
  @override
  @JsonKey(name: 'subtype_name')
  final String subtypeName;
  @override
  final String description;
  @override
  final int status;
  @override
  @JsonKey(name: 'auth_status')
  final String authStatus;
  @override
  @JsonKey(name: 'created_time')
  final String createdTime;
  @override
  @JsonKey(name: 'auth_time')
  final String authTime;

  @override
  String toString() {
    return 'AccountSubTypeModel(id: $id, accountTypeId: $accountTypeId, customerTypeId: $customerTypeId, subtypeName: $subtypeName, description: $description, status: $status, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSubTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountTypeId, accountTypeId) ||
                other.accountTypeId == accountTypeId) &&
            (identical(other.customerTypeId, customerTypeId) ||
                other.customerTypeId == customerTypeId) &&
            (identical(other.subtypeName, subtypeName) ||
                other.subtypeName == subtypeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.authTime, authTime) ||
                other.authTime == authTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      accountTypeId,
      customerTypeId,
      subtypeName,
      description,
      status,
      authStatus,
      createdTime,
      authTime);

  /// Create a copy of AccountSubTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSubTypeModelImplCopyWith<_$AccountSubTypeModelImpl> get copyWith =>
      __$$AccountSubTypeModelImplCopyWithImpl<_$AccountSubTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSubTypeModelImplToJson(
      this,
    );
  }
}

abstract class _AccountSubTypeModel implements AccountSubTypeModel {
  const factory _AccountSubTypeModel(
          {required final int id,
          @JsonKey(name: 'account_type_id') required final int accountTypeId,
          @JsonKey(name: 'customer_type_id') required final int customerTypeId,
          @JsonKey(name: 'subtype_name') required final String subtypeName,
          required final String description,
          required final int status,
          @JsonKey(name: 'auth_status') required final String authStatus,
          @JsonKey(name: 'created_time') required final String createdTime,
          @JsonKey(name: 'auth_time') required final String authTime}) =
      _$AccountSubTypeModelImpl;

  factory _AccountSubTypeModel.fromJson(Map<String, dynamic> json) =
      _$AccountSubTypeModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'account_type_id')
  int get accountTypeId;
  @override
  @JsonKey(name: 'customer_type_id')
  int get customerTypeId;
  @override
  @JsonKey(name: 'subtype_name')
  String get subtypeName;
  @override
  String get description;
  @override
  int get status;
  @override
  @JsonKey(name: 'auth_status')
  String get authStatus;
  @override
  @JsonKey(name: 'created_time')
  String get createdTime;
  @override
  @JsonKey(name: 'auth_time')
  String get authTime;

  /// Create a copy of AccountSubTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSubTypeModelImplCopyWith<_$AccountSubTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
