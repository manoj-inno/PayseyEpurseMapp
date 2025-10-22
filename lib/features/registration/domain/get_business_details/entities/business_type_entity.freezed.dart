// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessTypeEntity _$BusinessTypeEntityFromJson(Map<String, dynamic> json) {
  return _BusinessTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$BusinessTypeEntity {
  int get id => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get processStatus => throw _privateConstructorUsedError;
  String get authStatus => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;
  DateTime get authTime => throw _privateConstructorUsedError;

  /// Serializes this BusinessTypeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTypeEntityCopyWith<BusinessTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTypeEntityCopyWith<$Res> {
  factory $BusinessTypeEntityCopyWith(
          BusinessTypeEntity value, $Res Function(BusinessTypeEntity) then) =
      _$BusinessTypeEntityCopyWithImpl<$Res, BusinessTypeEntity>;
  @useResult
  $Res call(
      {int id,
      String businessName,
      String description,
      int status,
      int processStatus,
      String authStatus,
      DateTime createdTime,
      DateTime authTime});
}

/// @nodoc
class _$BusinessTypeEntityCopyWithImpl<$Res, $Val extends BusinessTypeEntity>
    implements $BusinessTypeEntityCopyWith<$Res> {
  _$BusinessTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessName = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessTypeEntityImplCopyWith<$Res>
    implements $BusinessTypeEntityCopyWith<$Res> {
  factory _$$BusinessTypeEntityImplCopyWith(_$BusinessTypeEntityImpl value,
          $Res Function(_$BusinessTypeEntityImpl) then) =
      __$$BusinessTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String businessName,
      String description,
      int status,
      int processStatus,
      String authStatus,
      DateTime createdTime,
      DateTime authTime});
}

/// @nodoc
class __$$BusinessTypeEntityImplCopyWithImpl<$Res>
    extends _$BusinessTypeEntityCopyWithImpl<$Res, _$BusinessTypeEntityImpl>
    implements _$$BusinessTypeEntityImplCopyWith<$Res> {
  __$$BusinessTypeEntityImplCopyWithImpl(_$BusinessTypeEntityImpl _value,
      $Res Function(_$BusinessTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessName = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
  }) {
    return _then(_$BusinessTypeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessTypeEntityImpl implements _BusinessTypeEntity {
  const _$BusinessTypeEntityImpl(
      {required this.id,
      required this.businessName,
      required this.description,
      required this.status,
      required this.processStatus,
      required this.authStatus,
      required this.createdTime,
      required this.authTime});

  factory _$BusinessTypeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTypeEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String businessName;
  @override
  final String description;
  @override
  final int status;
  @override
  final int processStatus;
  @override
  final String authStatus;
  @override
  final DateTime createdTime;
  @override
  final DateTime authTime;

  @override
  String toString() {
    return 'BusinessTypeEntity(id: $id, businessName: $businessName, description: $description, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
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
                other.authTime == authTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, businessName, description,
      status, processStatus, authStatus, createdTime, authTime);

  /// Create a copy of BusinessTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTypeEntityImplCopyWith<_$BusinessTypeEntityImpl> get copyWith =>
      __$$BusinessTypeEntityImplCopyWithImpl<_$BusinessTypeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTypeEntityImplToJson(
      this,
    );
  }
}

abstract class _BusinessTypeEntity implements BusinessTypeEntity {
  const factory _BusinessTypeEntity(
      {required final int id,
      required final String businessName,
      required final String description,
      required final int status,
      required final int processStatus,
      required final String authStatus,
      required final DateTime createdTime,
      required final DateTime authTime}) = _$BusinessTypeEntityImpl;

  factory _BusinessTypeEntity.fromJson(Map<String, dynamic> json) =
      _$BusinessTypeEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get businessName;
  @override
  String get description;
  @override
  int get status;
  @override
  int get processStatus;
  @override
  String get authStatus;
  @override
  DateTime get createdTime;
  @override
  DateTime get authTime;

  /// Create a copy of BusinessTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTypeEntityImplCopyWith<_$BusinessTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
