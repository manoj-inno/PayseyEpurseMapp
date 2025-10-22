// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_kyc_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterKycEntity _$RegisterKycEntityFromJson(Map<String, dynamic> json) {
  return _RegisterKycEntity.fromJson(json);
}

/// @nodoc
mixin _$RegisterKycEntity {
  String get regRef => throw _privateConstructorUsedError;
  int get regStatus => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  int get userType => throw _privateConstructorUsedError;

  /// Serializes this RegisterKycEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterKycEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterKycEntityCopyWith<RegisterKycEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterKycEntityCopyWith<$Res> {
  factory $RegisterKycEntityCopyWith(
          RegisterKycEntity value, $Res Function(RegisterKycEntity) then) =
      _$RegisterKycEntityCopyWithImpl<$Res, RegisterKycEntity>;
  @useResult
  $Res call(
      {String regRef,
      int regStatus,
      String status,
      String message,
      String remark,
      int userType});
}

/// @nodoc
class _$RegisterKycEntityCopyWithImpl<$Res, $Val extends RegisterKycEntity>
    implements $RegisterKycEntityCopyWith<$Res> {
  _$RegisterKycEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterKycEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regRef = null,
    Object? regStatus = null,
    Object? status = null,
    Object? message = null,
    Object? remark = null,
    Object? userType = null,
  }) {
    return _then(_value.copyWith(
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      regStatus: null == regStatus
          ? _value.regStatus
          : regStatus // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterKycEntityImplCopyWith<$Res>
    implements $RegisterKycEntityCopyWith<$Res> {
  factory _$$RegisterKycEntityImplCopyWith(_$RegisterKycEntityImpl value,
          $Res Function(_$RegisterKycEntityImpl) then) =
      __$$RegisterKycEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String regRef,
      int regStatus,
      String status,
      String message,
      String remark,
      int userType});
}

/// @nodoc
class __$$RegisterKycEntityImplCopyWithImpl<$Res>
    extends _$RegisterKycEntityCopyWithImpl<$Res, _$RegisterKycEntityImpl>
    implements _$$RegisterKycEntityImplCopyWith<$Res> {
  __$$RegisterKycEntityImplCopyWithImpl(_$RegisterKycEntityImpl _value,
      $Res Function(_$RegisterKycEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regRef = null,
    Object? regStatus = null,
    Object? status = null,
    Object? message = null,
    Object? remark = null,
    Object? userType = null,
  }) {
    return _then(_$RegisterKycEntityImpl(
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      regStatus: null == regStatus
          ? _value.regStatus
          : regStatus // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterKycEntityImpl implements _RegisterKycEntity {
  const _$RegisterKycEntityImpl(
      {required this.regRef,
      required this.regStatus,
      required this.status,
      required this.message,
      required this.remark,
      required this.userType});

  factory _$RegisterKycEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterKycEntityImplFromJson(json);

  @override
  final String regRef;
  @override
  final int regStatus;
  @override
  final String status;
  @override
  final String message;
  @override
  final String remark;
  @override
  final int userType;

  @override
  String toString() {
    return 'RegisterKycEntity(regRef: $regRef, regStatus: $regStatus, status: $status, message: $message, remark: $remark, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterKycEntityImpl &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.regStatus, regStatus) ||
                other.regStatus == regStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, regRef, regStatus, status, message, remark, userType);

  /// Create a copy of RegisterKycEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterKycEntityImplCopyWith<_$RegisterKycEntityImpl> get copyWith =>
      __$$RegisterKycEntityImplCopyWithImpl<_$RegisterKycEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterKycEntityImplToJson(
      this,
    );
  }
}

abstract class _RegisterKycEntity implements RegisterKycEntity {
  const factory _RegisterKycEntity(
      {required final String regRef,
      required final int regStatus,
      required final String status,
      required final String message,
      required final String remark,
      required final int userType}) = _$RegisterKycEntityImpl;

  factory _RegisterKycEntity.fromJson(Map<String, dynamic> json) =
      _$RegisterKycEntityImpl.fromJson;

  @override
  String get regRef;
  @override
  int get regStatus;
  @override
  String get status;
  @override
  String get message;
  @override
  String get remark;
  @override
  int get userType;

  /// Create a copy of RegisterKycEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterKycEntityImplCopyWith<_$RegisterKycEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
