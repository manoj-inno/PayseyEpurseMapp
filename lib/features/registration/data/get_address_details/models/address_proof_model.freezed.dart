// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_proof_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressProofModel _$AddressProofModelFromJson(Map<String, dynamic> json) {
  return _AddressProofModel.fromJson(json);
}

/// @nodoc
mixin _$AddressProofModel {
  @JsonKey(name: 'addr_doc_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_type')
  String get docType => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_type')
  int get entityType => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'process_status')
  int get processStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_time')
  DateTime get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_time')
  DateTime get authTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_userid')
  int get createdUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_userid')
  int get authUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_master')
  bool get isMaster => throw _privateConstructorUsedError;

  /// Serializes this AddressProofModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressProofModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressProofModelCopyWith<AddressProofModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressProofModelCopyWith<$Res> {
  factory $AddressProofModelCopyWith(
          AddressProofModel value, $Res Function(AddressProofModel) then) =
      _$AddressProofModelCopyWithImpl<$Res, AddressProofModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'addr_doc_id') int id,
      @JsonKey(name: 'doc_type') String docType,
      @JsonKey(name: 'entity_type') int entityType,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration,
      @JsonKey(name: 'is_master') bool isMaster});
}

/// @nodoc
class _$AddressProofModelCopyWithImpl<$Res, $Val extends AddressProofModel>
    implements $AddressProofModelCopyWith<$Res> {
  _$AddressProofModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressProofModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? docType = null,
    Object? entityType = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserId = null,
    Object? authUserId = null,
    Object? deauthNarration = null,
    Object? isMaster = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      docType: null == docType
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as int,
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
              as DateTime,
      authTime: null == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressProofModelImplCopyWith<$Res>
    implements $AddressProofModelCopyWith<$Res> {
  factory _$$AddressProofModelImplCopyWith(_$AddressProofModelImpl value,
          $Res Function(_$AddressProofModelImpl) then) =
      __$$AddressProofModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'addr_doc_id') int id,
      @JsonKey(name: 'doc_type') String docType,
      @JsonKey(name: 'entity_type') int entityType,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration,
      @JsonKey(name: 'is_master') bool isMaster});
}

/// @nodoc
class __$$AddressProofModelImplCopyWithImpl<$Res>
    extends _$AddressProofModelCopyWithImpl<$Res, _$AddressProofModelImpl>
    implements _$$AddressProofModelImplCopyWith<$Res> {
  __$$AddressProofModelImplCopyWithImpl(_$AddressProofModelImpl _value,
      $Res Function(_$AddressProofModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressProofModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? docType = null,
    Object? entityType = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserId = null,
    Object? authUserId = null,
    Object? deauthNarration = null,
    Object? isMaster = null,
  }) {
    return _then(_$AddressProofModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      docType: null == docType
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as int,
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
              as DateTime,
      authTime: null == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressProofModelImpl implements _AddressProofModel {
  const _$AddressProofModelImpl(
      {@JsonKey(name: 'addr_doc_id') required this.id,
      @JsonKey(name: 'doc_type') required this.docType,
      @JsonKey(name: 'entity_type') required this.entityType,
      required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime,
      @JsonKey(name: 'created_userid') required this.createdUserId,
      @JsonKey(name: 'auth_userid') required this.authUserId,
      @JsonKey(name: 'deauth_narration') required this.deauthNarration,
      @JsonKey(name: 'is_master') required this.isMaster});

  factory _$AddressProofModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressProofModelImplFromJson(json);

  @override
  @JsonKey(name: 'addr_doc_id')
  final int id;
  @override
  @JsonKey(name: 'doc_type')
  final String docType;
  @override
  @JsonKey(name: 'entity_type')
  final int entityType;
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
  final DateTime createdTime;
  @override
  @JsonKey(name: 'auth_time')
  final DateTime authTime;
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
  @JsonKey(name: 'is_master')
  final bool isMaster;

  @override
  String toString() {
    return 'AddressProofModel(id: $id, docType: $docType, entityType: $entityType, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime, createdUserId: $createdUserId, authUserId: $authUserId, deauthNarration: $deauthNarration, isMaster: $isMaster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressProofModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.docType, docType) || other.docType == docType) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
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
                other.deauthNarration == deauthNarration) &&
            (identical(other.isMaster, isMaster) ||
                other.isMaster == isMaster));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      docType,
      entityType,
      status,
      processStatus,
      authStatus,
      createdTime,
      authTime,
      createdUserId,
      authUserId,
      deauthNarration,
      isMaster);

  /// Create a copy of AddressProofModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressProofModelImplCopyWith<_$AddressProofModelImpl> get copyWith =>
      __$$AddressProofModelImplCopyWithImpl<_$AddressProofModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressProofModelImplToJson(
      this,
    );
  }
}

abstract class _AddressProofModel implements AddressProofModel {
  const factory _AddressProofModel(
      {@JsonKey(name: 'addr_doc_id') required final int id,
      @JsonKey(name: 'doc_type') required final String docType,
      @JsonKey(name: 'entity_type') required final int entityType,
      required final int status,
      @JsonKey(name: 'process_status') required final int processStatus,
      @JsonKey(name: 'auth_status') required final String authStatus,
      @JsonKey(name: 'created_time') required final DateTime createdTime,
      @JsonKey(name: 'auth_time') required final DateTime authTime,
      @JsonKey(name: 'created_userid') required final int createdUserId,
      @JsonKey(name: 'auth_userid') required final int authUserId,
      @JsonKey(name: 'deauth_narration') required final String deauthNarration,
      @JsonKey(name: 'is_master')
      required final bool isMaster}) = _$AddressProofModelImpl;

  factory _AddressProofModel.fromJson(Map<String, dynamic> json) =
      _$AddressProofModelImpl.fromJson;

  @override
  @JsonKey(name: 'addr_doc_id')
  int get id;
  @override
  @JsonKey(name: 'doc_type')
  String get docType;
  @override
  @JsonKey(name: 'entity_type')
  int get entityType;
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
  DateTime get createdTime;
  @override
  @JsonKey(name: 'auth_time')
  DateTime get authTime;
  @override
  @JsonKey(name: 'created_userid')
  int get createdUserId;
  @override
  @JsonKey(name: 'auth_userid')
  int get authUserId;
  @override
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration;
  @override
  @JsonKey(name: 'is_master')
  bool get isMaster;

  /// Create a copy of AddressProofModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressProofModelImplCopyWith<_$AddressProofModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
