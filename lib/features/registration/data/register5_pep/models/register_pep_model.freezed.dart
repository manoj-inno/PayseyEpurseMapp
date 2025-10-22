// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_pep_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterPepRequestModel _$RegisterPepRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterPepRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterPepRequestModel {
  @JsonKey(name: 'user_ref')
  String get userRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'pep_id')
  int get pepType => throw _privateConstructorUsedError;
  Map<String, dynamic> get dynamicFields => throw _privateConstructorUsedError;

  /// Serializes this RegisterPepRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterPepRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterPepRequestModelCopyWith<RegisterPepRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPepRequestModelCopyWith<$Res> {
  factory $RegisterPepRequestModelCopyWith(RegisterPepRequestModel value,
          $Res Function(RegisterPepRequestModel) then) =
      _$RegisterPepRequestModelCopyWithImpl<$Res, RegisterPepRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ref') String userRef,
      @JsonKey(name: 'pep_id') int pepType,
      Map<String, dynamic> dynamicFields});
}

/// @nodoc
class _$RegisterPepRequestModelCopyWithImpl<$Res,
        $Val extends RegisterPepRequestModel>
    implements $RegisterPepRequestModelCopyWith<$Res> {
  _$RegisterPepRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterPepRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? pepType = null,
    Object? dynamicFields = null,
  }) {
    return _then(_value.copyWith(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      pepType: null == pepType
          ? _value.pepType
          : pepType // ignore: cast_nullable_to_non_nullable
              as int,
      dynamicFields: null == dynamicFields
          ? _value.dynamicFields
          : dynamicFields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterPepRequestModelImplCopyWith<$Res>
    implements $RegisterPepRequestModelCopyWith<$Res> {
  factory _$$RegisterPepRequestModelImplCopyWith(
          _$RegisterPepRequestModelImpl value,
          $Res Function(_$RegisterPepRequestModelImpl) then) =
      __$$RegisterPepRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ref') String userRef,
      @JsonKey(name: 'pep_id') int pepType,
      Map<String, dynamic> dynamicFields});
}

/// @nodoc
class __$$RegisterPepRequestModelImplCopyWithImpl<$Res>
    extends _$RegisterPepRequestModelCopyWithImpl<$Res,
        _$RegisterPepRequestModelImpl>
    implements _$$RegisterPepRequestModelImplCopyWith<$Res> {
  __$$RegisterPepRequestModelImplCopyWithImpl(
      _$RegisterPepRequestModelImpl _value,
      $Res Function(_$RegisterPepRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterPepRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? pepType = null,
    Object? dynamicFields = null,
  }) {
    return _then(_$RegisterPepRequestModelImpl(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      pepType: null == pepType
          ? _value.pepType
          : pepType // ignore: cast_nullable_to_non_nullable
              as int,
      dynamicFields: null == dynamicFields
          ? _value._dynamicFields
          : dynamicFields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterPepRequestModelImpl implements _RegisterPepRequestModel {
  const _$RegisterPepRequestModelImpl(
      {@JsonKey(name: 'user_ref') required this.userRef,
      @JsonKey(name: 'pep_id') required this.pepType,
      required final Map<String, dynamic> dynamicFields})
      : _dynamicFields = dynamicFields;

  factory _$RegisterPepRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterPepRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_ref')
  final String userRef;
  @override
  @JsonKey(name: 'pep_id')
  final int pepType;
  final Map<String, dynamic> _dynamicFields;
  @override
  Map<String, dynamic> get dynamicFields {
    if (_dynamicFields is EqualUnmodifiableMapView) return _dynamicFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dynamicFields);
  }

  @override
  String toString() {
    return 'RegisterPepRequestModel(userRef: $userRef, pepType: $pepType, dynamicFields: $dynamicFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPepRequestModelImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.pepType, pepType) || other.pepType == pepType) &&
            const DeepCollectionEquality()
                .equals(other._dynamicFields, _dynamicFields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userRef, pepType,
      const DeepCollectionEquality().hash(_dynamicFields));

  /// Create a copy of RegisterPepRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPepRequestModelImplCopyWith<_$RegisterPepRequestModelImpl>
      get copyWith => __$$RegisterPepRequestModelImplCopyWithImpl<
          _$RegisterPepRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterPepRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterPepRequestModel implements RegisterPepRequestModel {
  const factory _RegisterPepRequestModel(
          {@JsonKey(name: 'user_ref') required final String userRef,
          @JsonKey(name: 'pep_id') required final int pepType,
          required final Map<String, dynamic> dynamicFields}) =
      _$RegisterPepRequestModelImpl;

  factory _RegisterPepRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegisterPepRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_ref')
  String get userRef;
  @override
  @JsonKey(name: 'pep_id')
  int get pepType;
  @override
  Map<String, dynamic> get dynamicFields;

  /// Create a copy of RegisterPepRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterPepRequestModelImplCopyWith<_$RegisterPepRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterPepResponseModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get regRef => throw _privateConstructorUsedError;
  int get regStatus => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get userType => throw _privateConstructorUsedError;

  /// Create a copy of RegisterPepResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterPepResponseModelCopyWith<RegisterPepResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPepResponseModelCopyWith<$Res> {
  factory $RegisterPepResponseModelCopyWith(RegisterPepResponseModel value,
          $Res Function(RegisterPepResponseModel) then) =
      _$RegisterPepResponseModelCopyWithImpl<$Res, RegisterPepResponseModel>;
  @useResult
  $Res call(
      {int code,
      String message,
      String regRef,
      int regStatus,
      String remark,
      String status,
      int userType});
}

/// @nodoc
class _$RegisterPepResponseModelCopyWithImpl<$Res,
        $Val extends RegisterPepResponseModel>
    implements $RegisterPepResponseModelCopyWith<$Res> {
  _$RegisterPepResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterPepResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? regRef = null,
    Object? regStatus = null,
    Object? remark = null,
    Object? status = null,
    Object? userType = null,
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
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterPepResponseModelImplCopyWith<$Res>
    implements $RegisterPepResponseModelCopyWith<$Res> {
  factory _$$RegisterPepResponseModelImplCopyWith(
          _$RegisterPepResponseModelImpl value,
          $Res Function(_$RegisterPepResponseModelImpl) then) =
      __$$RegisterPepResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      String regRef,
      int regStatus,
      String remark,
      String status,
      int userType});
}

/// @nodoc
class __$$RegisterPepResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterPepResponseModelCopyWithImpl<$Res,
        _$RegisterPepResponseModelImpl>
    implements _$$RegisterPepResponseModelImplCopyWith<$Res> {
  __$$RegisterPepResponseModelImplCopyWithImpl(
      _$RegisterPepResponseModelImpl _value,
      $Res Function(_$RegisterPepResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterPepResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? regRef = null,
    Object? regStatus = null,
    Object? remark = null,
    Object? status = null,
    Object? userType = null,
  }) {
    return _then(_$RegisterPepResponseModelImpl(
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
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterPepResponseModelImpl implements _RegisterPepResponseModel {
  const _$RegisterPepResponseModelImpl(
      {required this.code,
      required this.message,
      required this.regRef,
      required this.regStatus,
      required this.remark,
      required this.status,
      required this.userType});

  @override
  final int code;
  @override
  final String message;
  @override
  final String regRef;
  @override
  final int regStatus;
  @override
  final String remark;
  @override
  final String status;
  @override
  final int userType;

  @override
  String toString() {
    return 'RegisterPepResponseModel(code: $code, message: $message, regRef: $regRef, regStatus: $regStatus, remark: $remark, status: $status, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPepResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.regStatus, regStatus) ||
                other.regStatus == regStatus) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, regRef, regStatus, remark, status, userType);

  /// Create a copy of RegisterPepResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPepResponseModelImplCopyWith<_$RegisterPepResponseModelImpl>
      get copyWith => __$$RegisterPepResponseModelImplCopyWithImpl<
          _$RegisterPepResponseModelImpl>(this, _$identity);
}

abstract class _RegisterPepResponseModel implements RegisterPepResponseModel {
  const factory _RegisterPepResponseModel(
      {required final int code,
      required final String message,
      required final String regRef,
      required final int regStatus,
      required final String remark,
      required final String status,
      required final int userType}) = _$RegisterPepResponseModelImpl;

  @override
  int get code;
  @override
  String get message;
  @override
  String get regRef;
  @override
  int get regStatus;
  @override
  String get remark;
  @override
  String get status;
  @override
  int get userType;

  /// Create a copy of RegisterPepResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterPepResponseModelImplCopyWith<_$RegisterPepResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
