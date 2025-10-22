// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressTypeModel _$AddressTypeModelFromJson(Map<String, dynamic> json) {
  return _AddressTypeModel.fromJson(json);
}

/// @nodoc
mixin _$AddressTypeModel {
  @JsonKey(name: 'address_type_id')
  int get addressTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_type_desc')
  String get addressTypeDesc => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'process_status')
  int get processStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_time')
  String get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_time')
  String get authTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'cust_type')
  int get custType => throw _privateConstructorUsedError;
  @JsonKey(name: 'mandatory')
  bool get mandatory => throw _privateConstructorUsedError;

  /// Serializes this AddressTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressTypeModelCopyWith<AddressTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressTypeModelCopyWith<$Res> {
  factory $AddressTypeModelCopyWith(
          AddressTypeModel value, $Res Function(AddressTypeModel) then) =
      _$AddressTypeModelCopyWithImpl<$Res, AddressTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_type_id') int addressTypeId,
      @JsonKey(name: 'address_type_desc') String addressTypeDesc,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') String createdTime,
      @JsonKey(name: 'auth_time') String authTime,
      @JsonKey(name: 'cust_type') int custType,
      @JsonKey(name: 'mandatory') bool mandatory});
}

/// @nodoc
class _$AddressTypeModelCopyWithImpl<$Res, $Val extends AddressTypeModel>
    implements $AddressTypeModelCopyWith<$Res> {
  _$AddressTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressTypeId = null,
    Object? addressTypeDesc = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? custType = null,
    Object? mandatory = null,
  }) {
    return _then(_value.copyWith(
      addressTypeId: null == addressTypeId
          ? _value.addressTypeId
          : addressTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      addressTypeDesc: null == addressTypeDesc
          ? _value.addressTypeDesc
          : addressTypeDesc // ignore: cast_nullable_to_non_nullable
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
      custType: null == custType
          ? _value.custType
          : custType // ignore: cast_nullable_to_non_nullable
              as int,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressTypeModelImplCopyWith<$Res>
    implements $AddressTypeModelCopyWith<$Res> {
  factory _$$AddressTypeModelImplCopyWith(_$AddressTypeModelImpl value,
          $Res Function(_$AddressTypeModelImpl) then) =
      __$$AddressTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_type_id') int addressTypeId,
      @JsonKey(name: 'address_type_desc') String addressTypeDesc,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') String createdTime,
      @JsonKey(name: 'auth_time') String authTime,
      @JsonKey(name: 'cust_type') int custType,
      @JsonKey(name: 'mandatory') bool mandatory});
}

/// @nodoc
class __$$AddressTypeModelImplCopyWithImpl<$Res>
    extends _$AddressTypeModelCopyWithImpl<$Res, _$AddressTypeModelImpl>
    implements _$$AddressTypeModelImplCopyWith<$Res> {
  __$$AddressTypeModelImplCopyWithImpl(_$AddressTypeModelImpl _value,
      $Res Function(_$AddressTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressTypeId = null,
    Object? addressTypeDesc = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? custType = null,
    Object? mandatory = null,
  }) {
    return _then(_$AddressTypeModelImpl(
      addressTypeId: null == addressTypeId
          ? _value.addressTypeId
          : addressTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      addressTypeDesc: null == addressTypeDesc
          ? _value.addressTypeDesc
          : addressTypeDesc // ignore: cast_nullable_to_non_nullable
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
      custType: null == custType
          ? _value.custType
          : custType // ignore: cast_nullable_to_non_nullable
              as int,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressTypeModelImpl implements _AddressTypeModel {
  const _$AddressTypeModelImpl(
      {@JsonKey(name: 'address_type_id') required this.addressTypeId,
      @JsonKey(name: 'address_type_desc') required this.addressTypeDesc,
      required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime,
      @JsonKey(name: 'cust_type') required this.custType,
      @JsonKey(name: 'mandatory') required this.mandatory});

  factory _$AddressTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'address_type_id')
  final int addressTypeId;
  @override
  @JsonKey(name: 'address_type_desc')
  final String addressTypeDesc;
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
  @JsonKey(name: 'cust_type')
  final int custType;
  @override
  @JsonKey(name: 'mandatory')
  final bool mandatory;

  @override
  String toString() {
    return 'AddressTypeModel(addressTypeId: $addressTypeId, addressTypeDesc: $addressTypeDesc, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime, custType: $custType, mandatory: $mandatory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressTypeModelImpl &&
            (identical(other.addressTypeId, addressTypeId) ||
                other.addressTypeId == addressTypeId) &&
            (identical(other.addressTypeDesc, addressTypeDesc) ||
                other.addressTypeDesc == addressTypeDesc) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.authTime, authTime) ||
                other.authTime == authTime) &&
            (identical(other.custType, custType) ||
                other.custType == custType) &&
            (identical(other.mandatory, mandatory) ||
                other.mandatory == mandatory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressTypeId,
      addressTypeDesc,
      status,
      processStatus,
      authStatus,
      createdTime,
      authTime,
      custType,
      mandatory);

  /// Create a copy of AddressTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressTypeModelImplCopyWith<_$AddressTypeModelImpl> get copyWith =>
      __$$AddressTypeModelImplCopyWithImpl<_$AddressTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressTypeModelImplToJson(
      this,
    );
  }
}

abstract class _AddressTypeModel implements AddressTypeModel {
  const factory _AddressTypeModel(
      {@JsonKey(name: 'address_type_id') required final int addressTypeId,
      @JsonKey(name: 'address_type_desc') required final String addressTypeDesc,
      required final int status,
      @JsonKey(name: 'process_status') required final int processStatus,
      @JsonKey(name: 'auth_status') required final String authStatus,
      @JsonKey(name: 'created_time') required final String createdTime,
      @JsonKey(name: 'auth_time') required final String authTime,
      @JsonKey(name: 'cust_type') required final int custType,
      @JsonKey(name: 'mandatory')
      required final bool mandatory}) = _$AddressTypeModelImpl;

  factory _AddressTypeModel.fromJson(Map<String, dynamic> json) =
      _$AddressTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'address_type_id')
  int get addressTypeId;
  @override
  @JsonKey(name: 'address_type_desc')
  String get addressTypeDesc;
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
  @JsonKey(name: 'cust_type')
  int get custType;
  @override
  @JsonKey(name: 'mandatory')
  bool get mandatory;

  /// Create a copy of AddressTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressTypeModelImplCopyWith<_$AddressTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
