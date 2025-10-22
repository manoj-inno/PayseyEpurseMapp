// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_mobile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileCheckEntity _$MobileCheckEntityFromJson(Map<String, dynamic> json) {
  return _MobileCheckEntity.fromJson(json);
}

/// @nodoc
mixin _$MobileCheckEntity {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get regRef => throw _privateConstructorUsedError;
  int get regStatus => throw _privateConstructorUsedError;
  int get userType => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;

  /// Serializes this MobileCheckEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobileCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobileCheckEntityCopyWith<MobileCheckEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileCheckEntityCopyWith<$Res> {
  factory $MobileCheckEntityCopyWith(
          MobileCheckEntity value, $Res Function(MobileCheckEntity) then) =
      _$MobileCheckEntityCopyWithImpl<$Res, MobileCheckEntity>;
  @useResult
  $Res call(
      {int code,
      String message,
      String regRef,
      int regStatus,
      int userType,
      String remark});
}

/// @nodoc
class _$MobileCheckEntityCopyWithImpl<$Res, $Val extends MobileCheckEntity>
    implements $MobileCheckEntityCopyWith<$Res> {
  _$MobileCheckEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? regRef = null,
    Object? regStatus = null,
    Object? userType = null,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      regStatus: null == regStatus
          ? _value.regStatus
          : regStatus // ignore: cast_nullable_to_non_nullable
              as int,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileCheckEntityImplCopyWith<$Res>
    implements $MobileCheckEntityCopyWith<$Res> {
  factory _$$MobileCheckEntityImplCopyWith(_$MobileCheckEntityImpl value,
          $Res Function(_$MobileCheckEntityImpl) then) =
      __$$MobileCheckEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      String regRef,
      int regStatus,
      int userType,
      String remark});
}

/// @nodoc
class __$$MobileCheckEntityImplCopyWithImpl<$Res>
    extends _$MobileCheckEntityCopyWithImpl<$Res, _$MobileCheckEntityImpl>
    implements _$$MobileCheckEntityImplCopyWith<$Res> {
  __$$MobileCheckEntityImplCopyWithImpl(_$MobileCheckEntityImpl _value,
      $Res Function(_$MobileCheckEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? regRef = null,
    Object? regStatus = null,
    Object? userType = null,
    Object? remark = null,
  }) {
    return _then(_$MobileCheckEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      regStatus: null == regStatus
          ? _value.regStatus
          : regStatus // ignore: cast_nullable_to_non_nullable
              as int,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileCheckEntityImpl implements _MobileCheckEntity {
  const _$MobileCheckEntityImpl(
      {required this.code,
      required this.message,
      required this.regRef,
      required this.regStatus,
      required this.userType,
      required this.remark});

  factory _$MobileCheckEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileCheckEntityImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final String regRef;
  @override
  final int regStatus;
  @override
  final int userType;
  @override
  final String remark;

  @override
  String toString() {
    return 'MobileCheckEntity(code: $code, message: $message, regRef: $regRef, regStatus: $regStatus, userType: $userType, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileCheckEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.regStatus, regStatus) ||
                other.regStatus == regStatus) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, regRef, regStatus, userType, remark);

  /// Create a copy of MobileCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileCheckEntityImplCopyWith<_$MobileCheckEntityImpl> get copyWith =>
      __$$MobileCheckEntityImplCopyWithImpl<_$MobileCheckEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileCheckEntityImplToJson(
      this,
    );
  }
}

abstract class _MobileCheckEntity implements MobileCheckEntity {
  const factory _MobileCheckEntity(
      {required final int code,
      required final String message,
      required final String regRef,
      required final int regStatus,
      required final int userType,
      required final String remark}) = _$MobileCheckEntityImpl;

  factory _MobileCheckEntity.fromJson(Map<String, dynamic> json) =
      _$MobileCheckEntityImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  String get regRef;
  @override
  int get regStatus;
  @override
  int get userType;
  @override
  String get remark;

  /// Create a copy of MobileCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileCheckEntityImplCopyWith<_$MobileCheckEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
