// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerTypeModel _$CustomerTypeModelFromJson(Map<String, dynamic> json) {
  return _CustomerTypeModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerTypeModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_name')
  String get typeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'process_status')
  int get processStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_time')
  String get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_time')
  String get authTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_userid')
  int get createdUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_userid')
  int get authUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration => throw _privateConstructorUsedError;

  /// Serializes this CustomerTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerTypeModelCopyWith<CustomerTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTypeModelCopyWith<$Res> {
  factory $CustomerTypeModelCopyWith(
          CustomerTypeModel value, $Res Function(CustomerTypeModel) then) =
      _$CustomerTypeModelCopyWithImpl<$Res, CustomerTypeModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'type_name') String typeName,
      String description,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') String createdTime,
      @JsonKey(name: 'auth_time') String authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration});
}

/// @nodoc
class _$CustomerTypeModelCopyWithImpl<$Res, $Val extends CustomerTypeModel>
    implements $CustomerTypeModelCopyWith<$Res> {
  _$CustomerTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserId = null,
    Object? authUserId = null,
    Object? deauthNarration = null,
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
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
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
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int,
      authUserId: null == authUserId
          ? _value.authUserId
          : authUserId // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerTypeModelImplCopyWith<$Res>
    implements $CustomerTypeModelCopyWith<$Res> {
  factory _$$CustomerTypeModelImplCopyWith(_$CustomerTypeModelImpl value,
          $Res Function(_$CustomerTypeModelImpl) then) =
      __$$CustomerTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'type_name') String typeName,
      String description,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') String createdTime,
      @JsonKey(name: 'auth_time') String authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration});
}

/// @nodoc
class __$$CustomerTypeModelImplCopyWithImpl<$Res>
    extends _$CustomerTypeModelCopyWithImpl<$Res, _$CustomerTypeModelImpl>
    implements _$$CustomerTypeModelImplCopyWith<$Res> {
  __$$CustomerTypeModelImplCopyWithImpl(_$CustomerTypeModelImpl _value,
      $Res Function(_$CustomerTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserId = null,
    Object? authUserId = null,
    Object? deauthNarration = null,
  }) {
    return _then(_$CustomerTypeModelImpl(
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
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
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
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int,
      authUserId: null == authUserId
          ? _value.authUserId
          : authUserId // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerTypeModelImpl implements _CustomerTypeModel {
  const _$CustomerTypeModelImpl(
      {required this.id,
      @JsonKey(name: 'type_name') required this.typeName,
      required this.description,
      required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime,
      @JsonKey(name: 'created_userid') required this.createdUserId,
      @JsonKey(name: 'auth_userid') required this.authUserId,
      @JsonKey(name: 'deauth_narration') required this.deauthNarration});

  factory _$CustomerTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerTypeModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'type_name')
  final String typeName;
  @override
  final String description;
  @override
  final int status;
  @override
  @JsonKey(name: 'process_status')
  final int processStatus;
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
  @JsonKey(name: 'created_userid')
  final int createdUserId;
  @override
  @JsonKey(name: 'auth_userid')
  final int authUserId;
  @override
  @JsonKey(name: 'deauth_narration')
  final String deauthNarration;

  @override
  String toString() {
    return 'CustomerTypeModel(id: $id, typeName: $typeName, description: $description, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime, createdUserId: $createdUserId, authUserId: $authUserId, deauthNarration: $deauthNarration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.authTime, authTime) ||
                other.authTime == authTime) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId) &&
            (identical(other.authUserId, authUserId) ||
                other.authUserId == authUserId) &&
            (identical(other.deauthNarration, deauthNarration) ||
                other.deauthNarration == deauthNarration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      typeName,
      description,
      status,
      processStatus,
      authStatus,
      createdTime,
      authTime,
      createdUserId,
      authUserId,
      deauthNarration);

  /// Create a copy of CustomerTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerTypeModelImplCopyWith<_$CustomerTypeModelImpl> get copyWith =>
      __$$CustomerTypeModelImplCopyWithImpl<_$CustomerTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerTypeModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerTypeModel implements CustomerTypeModel {
  const factory _CustomerTypeModel(
      {required final int id,
      @JsonKey(name: 'type_name') required final String typeName,
      required final String description,
      required final int status,
      @JsonKey(name: 'process_status') required final int processStatus,
      @JsonKey(name: 'auth_status') required final String authStatus,
      @JsonKey(name: 'created_time') required final String createdTime,
      @JsonKey(name: 'auth_time') required final String authTime,
      @JsonKey(name: 'created_userid') required final int createdUserId,
      @JsonKey(name: 'auth_userid') required final int authUserId,
      @JsonKey(name: 'deauth_narration')
      required final String deauthNarration}) = _$CustomerTypeModelImpl;

  factory _CustomerTypeModel.fromJson(Map<String, dynamic> json) =
      _$CustomerTypeModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'type_name')
  String get typeName;
  @override
  String get description;
  @override
  int get status;
  @override
  @JsonKey(name: 'process_status')
  int get processStatus;
  @override
  @JsonKey(name: 'auth_status')
  String get authStatus;
  @override
  @JsonKey(name: 'created_time')
  String get createdTime;
  @override
  @JsonKey(name: 'auth_time')
  String get authTime;
  @override
  @JsonKey(name: 'created_userid')
  int get createdUserId;
  @override
  @JsonKey(name: 'auth_userid')
  int get authUserId;
  @override
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration;

  /// Create a copy of CustomerTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerTypeModelImplCopyWith<_$CustomerTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
