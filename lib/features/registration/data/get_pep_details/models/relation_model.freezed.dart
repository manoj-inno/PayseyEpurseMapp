// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RelationshipModel _$RelationshipModelFromJson(Map<String, dynamic> json) {
  return _RelationshipModel.fromJson(json);
}

/// @nodoc
mixin _$RelationshipModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationship_name')
  String get relationshipName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
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

  /// Serializes this RelationshipModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelationshipModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelationshipModelCopyWith<RelationshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationshipModelCopyWith<$Res> {
  factory $RelationshipModelCopyWith(
          RelationshipModel value, $Res Function(RelationshipModel) then) =
      _$RelationshipModelCopyWithImpl<$Res, RelationshipModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'relationship_name') String relationshipName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration});
}

/// @nodoc
class _$RelationshipModelCopyWithImpl<$Res, $Val extends RelationshipModel>
    implements $RelationshipModelCopyWith<$Res> {
  _$RelationshipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelationshipModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? relationshipName = null,
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
      relationshipName: null == relationshipName
          ? _value.relationshipName
          : relationshipName // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelationshipModelImplCopyWith<$Res>
    implements $RelationshipModelCopyWith<$Res> {
  factory _$$RelationshipModelImplCopyWith(_$RelationshipModelImpl value,
          $Res Function(_$RelationshipModelImpl) then) =
      __$$RelationshipModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'relationship_name') String relationshipName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration});
}

/// @nodoc
class __$$RelationshipModelImplCopyWithImpl<$Res>
    extends _$RelationshipModelCopyWithImpl<$Res, _$RelationshipModelImpl>
    implements _$$RelationshipModelImplCopyWith<$Res> {
  __$$RelationshipModelImplCopyWithImpl(_$RelationshipModelImpl _value,
      $Res Function(_$RelationshipModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelationshipModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? relationshipName = null,
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
    return _then(_$RelationshipModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      relationshipName: null == relationshipName
          ? _value.relationshipName
          : relationshipName // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelationshipModelImpl implements _RelationshipModel {
  const _$RelationshipModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'relationship_name') required this.relationshipName,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime,
      @JsonKey(name: 'created_userid') required this.createdUserId,
      @JsonKey(name: 'auth_userid') required this.authUserId,
      @JsonKey(name: 'deauth_narration') required this.deauthNarration});

  factory _$RelationshipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelationshipModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'relationship_name')
  final String relationshipName;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'status')
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
  String toString() {
    return 'RelationshipModel(id: $id, relationshipName: $relationshipName, description: $description, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime, createdUserId: $createdUserId, authUserId: $authUserId, deauthNarration: $deauthNarration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationshipModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.relationshipName, relationshipName) ||
                other.relationshipName == relationshipName) &&
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
      relationshipName,
      description,
      status,
      processStatus,
      authStatus,
      createdTime,
      authTime,
      createdUserId,
      authUserId,
      deauthNarration);

  /// Create a copy of RelationshipModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationshipModelImplCopyWith<_$RelationshipModelImpl> get copyWith =>
      __$$RelationshipModelImplCopyWithImpl<_$RelationshipModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelationshipModelImplToJson(
      this,
    );
  }
}

abstract class _RelationshipModel implements RelationshipModel {
  const factory _RelationshipModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'relationship_name')
      required final String relationshipName,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'process_status') required final int processStatus,
      @JsonKey(name: 'auth_status') required final String authStatus,
      @JsonKey(name: 'created_time') required final DateTime createdTime,
      @JsonKey(name: 'auth_time') required final DateTime authTime,
      @JsonKey(name: 'created_userid') required final int createdUserId,
      @JsonKey(name: 'auth_userid') required final int authUserId,
      @JsonKey(name: 'deauth_narration')
      required final String deauthNarration}) = _$RelationshipModelImpl;

  factory _RelationshipModel.fromJson(Map<String, dynamic> json) =
      _$RelationshipModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'relationship_name')
  String get relationshipName;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'status')
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

  /// Create a copy of RelationshipModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelationshipModelImplCopyWith<_$RelationshipModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
