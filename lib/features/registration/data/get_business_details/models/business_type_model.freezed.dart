// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessTypeModel _$BusinessTypeModelFromJson(Map<String, dynamic> json) {
  return _BusinessTypeModel.fromJson(json);
}

/// @nodoc
mixin _$BusinessTypeModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_name')
  String get businessName => throw _privateConstructorUsedError;
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

  /// Serializes this BusinessTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTypeModelCopyWith<BusinessTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTypeModelCopyWith<$Res> {
  factory $BusinessTypeModelCopyWith(
          BusinessTypeModel value, $Res Function(BusinessTypeModel) then) =
      _$BusinessTypeModelCopyWithImpl<$Res, BusinessTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'business_name') String businessName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime});
}

/// @nodoc
class _$BusinessTypeModelCopyWithImpl<$Res, $Val extends BusinessTypeModel>
    implements $BusinessTypeModelCopyWith<$Res> {
  _$BusinessTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessTypeModel
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
abstract class _$$BusinessTypeModelImplCopyWith<$Res>
    implements $BusinessTypeModelCopyWith<$Res> {
  factory _$$BusinessTypeModelImplCopyWith(_$BusinessTypeModelImpl value,
          $Res Function(_$BusinessTypeModelImpl) then) =
      __$$BusinessTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'business_name') String businessName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime});
}

/// @nodoc
class __$$BusinessTypeModelImplCopyWithImpl<$Res>
    extends _$BusinessTypeModelCopyWithImpl<$Res, _$BusinessTypeModelImpl>
    implements _$$BusinessTypeModelImplCopyWith<$Res> {
  __$$BusinessTypeModelImplCopyWithImpl(_$BusinessTypeModelImpl _value,
      $Res Function(_$BusinessTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessTypeModel
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
    return _then(_$BusinessTypeModelImpl(
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
class _$BusinessTypeModelImpl implements _BusinessTypeModel {
  const _$BusinessTypeModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'business_name') required this.businessName,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime});

  factory _$BusinessTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'business_name')
  final String businessName;
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
  String toString() {
    return 'BusinessTypeModel(id: $id, businessName: $businessName, description: $description, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTypeModelImpl &&
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

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTypeModelImplCopyWith<_$BusinessTypeModelImpl> get copyWith =>
      __$$BusinessTypeModelImplCopyWithImpl<_$BusinessTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTypeModelImplToJson(
      this,
    );
  }
}

abstract class _BusinessTypeModel implements BusinessTypeModel {
  const factory _BusinessTypeModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'business_name') required final String businessName,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'process_status') required final int processStatus,
          @JsonKey(name: 'auth_status') required final String authStatus,
          @JsonKey(name: 'created_time') required final DateTime createdTime,
          @JsonKey(name: 'auth_time') required final DateTime authTime}) =
      _$BusinessTypeModelImpl;

  factory _BusinessTypeModel.fromJson(Map<String, dynamic> json) =
      _$BusinessTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'business_name')
  String get businessName;
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

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTypeModelImplCopyWith<_$BusinessTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
