// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_mobile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileCheckModel _$MobileCheckModelFromJson(Map<String, dynamic> json) {
  return _MobileCheckModel.fromJson(json);
}

/// @nodoc
mixin _$MobileCheckModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MobileCheckDataModel? get data => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;

  /// Serializes this MobileCheckModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobileCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobileCheckModelCopyWith<MobileCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileCheckModelCopyWith<$Res> {
  factory $MobileCheckModelCopyWith(
          MobileCheckModel value, $Res Function(MobileCheckModel) then) =
      _$MobileCheckModelCopyWithImpl<$Res, MobileCheckModel>;
  @useResult
  $Res call(
      {int code, String message, MobileCheckDataModel? data, String remark});

  $MobileCheckDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$MobileCheckModelCopyWithImpl<$Res, $Val extends MobileCheckModel>
    implements $MobileCheckModelCopyWith<$Res> {
  _$MobileCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MobileCheckDataModel?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of MobileCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MobileCheckDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MobileCheckModelImplCopyWith<$Res>
    implements $MobileCheckModelCopyWith<$Res> {
  factory _$$MobileCheckModelImplCopyWith(_$MobileCheckModelImpl value,
          $Res Function(_$MobileCheckModelImpl) then) =
      __$$MobileCheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code, String message, MobileCheckDataModel? data, String remark});

  @override
  $MobileCheckDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MobileCheckModelImplCopyWithImpl<$Res>
    extends _$MobileCheckModelCopyWithImpl<$Res, _$MobileCheckModelImpl>
    implements _$$MobileCheckModelImplCopyWith<$Res> {
  __$$MobileCheckModelImplCopyWithImpl(_$MobileCheckModelImpl _value,
      $Res Function(_$MobileCheckModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
    Object? remark = null,
  }) {
    return _then(_$MobileCheckModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MobileCheckDataModel?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileCheckModelImpl implements _MobileCheckModel {
  const _$MobileCheckModelImpl(
      {this.code = 0, this.message = '', this.data, this.remark = ''});

  factory _$MobileCheckModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileCheckModelImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String message;
  @override
  final MobileCheckDataModel? data;
  @override
  @JsonKey()
  final String remark;

  @override
  String toString() {
    return 'MobileCheckModel(code: $code, message: $message, data: $data, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileCheckModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data, remark);

  /// Create a copy of MobileCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileCheckModelImplCopyWith<_$MobileCheckModelImpl> get copyWith =>
      __$$MobileCheckModelImplCopyWithImpl<_$MobileCheckModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileCheckModelImplToJson(
      this,
    );
  }
}

abstract class _MobileCheckModel implements MobileCheckModel {
  const factory _MobileCheckModel(
      {final int code,
      final String message,
      final MobileCheckDataModel? data,
      final String remark}) = _$MobileCheckModelImpl;

  factory _MobileCheckModel.fromJson(Map<String, dynamic> json) =
      _$MobileCheckModelImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  MobileCheckDataModel? get data;
  @override
  String get remark;

  /// Create a copy of MobileCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileCheckModelImplCopyWith<_$MobileCheckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileCheckDataModel _$MobileCheckDataModelFromJson(Map<String, dynamic> json) {
  return _MobileCheckDataModel.fromJson(json);
}

/// @nodoc
mixin _$MobileCheckDataModel {
  int get id => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_ref')
  String get regRef => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get processStatus => throw _privateConstructorUsedError;
  String get authStatus => throw _privateConstructorUsedError;
  String get createdTime => throw _privateConstructorUsedError;
  String get authTime => throw _privateConstructorUsedError;
  int get createdUserid => throw _privateConstructorUsedError;
  int get authUserid => throw _privateConstructorUsedError;
  String get deauthNarration => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  int get userType => throw _privateConstructorUsedError;

  /// Serializes this MobileCheckDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobileCheckDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobileCheckDataModelCopyWith<MobileCheckDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileCheckDataModelCopyWith<$Res> {
  factory $MobileCheckDataModelCopyWith(MobileCheckDataModel value,
          $Res Function(MobileCheckDataModel) then) =
      _$MobileCheckDataModelCopyWithImpl<$Res, MobileCheckDataModel>;
  @useResult
  $Res call(
      {int id,
      String mobile,
      String email,
      @JsonKey(name: 'user_ref') String regRef,
      int status,
      int processStatus,
      String authStatus,
      String createdTime,
      String authTime,
      int createdUserid,
      int authUserid,
      String deauthNarration,
      @JsonKey(name: 'user_type') int userType});
}

/// @nodoc
class _$MobileCheckDataModelCopyWithImpl<$Res,
        $Val extends MobileCheckDataModel>
    implements $MobileCheckDataModelCopyWith<$Res> {
  _$MobileCheckDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobileCheckDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobile = null,
    Object? email = null,
    Object? regRef = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserid = null,
    Object? authUserid = null,
    Object? deauthNarration = null,
    Object? userType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
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
      createdUserid: null == createdUserid
          ? _value.createdUserid
          : createdUserid // ignore: cast_nullable_to_non_nullable
              as int,
      authUserid: null == authUserid
          ? _value.authUserid
          : authUserid // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileCheckDataModelImplCopyWith<$Res>
    implements $MobileCheckDataModelCopyWith<$Res> {
  factory _$$MobileCheckDataModelImplCopyWith(_$MobileCheckDataModelImpl value,
          $Res Function(_$MobileCheckDataModelImpl) then) =
      __$$MobileCheckDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String mobile,
      String email,
      @JsonKey(name: 'user_ref') String regRef,
      int status,
      int processStatus,
      String authStatus,
      String createdTime,
      String authTime,
      int createdUserid,
      int authUserid,
      String deauthNarration,
      @JsonKey(name: 'user_type') int userType});
}

/// @nodoc
class __$$MobileCheckDataModelImplCopyWithImpl<$Res>
    extends _$MobileCheckDataModelCopyWithImpl<$Res, _$MobileCheckDataModelImpl>
    implements _$$MobileCheckDataModelImplCopyWith<$Res> {
  __$$MobileCheckDataModelImplCopyWithImpl(_$MobileCheckDataModelImpl _value,
      $Res Function(_$MobileCheckDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobileCheckDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobile = null,
    Object? email = null,
    Object? regRef = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserid = null,
    Object? authUserid = null,
    Object? deauthNarration = null,
    Object? userType = null,
  }) {
    return _then(_$MobileCheckDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
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
      createdUserid: null == createdUserid
          ? _value.createdUserid
          : createdUserid // ignore: cast_nullable_to_non_nullable
              as int,
      authUserid: null == authUserid
          ? _value.authUserid
          : authUserid // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
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
class _$MobileCheckDataModelImpl implements _MobileCheckDataModel {
  const _$MobileCheckDataModelImpl(
      {this.id = 0,
      this.mobile = '',
      this.email = '',
      @JsonKey(name: 'user_ref') this.regRef = '',
      this.status = 0,
      this.processStatus = 0,
      this.authStatus = '',
      this.createdTime = '',
      this.authTime = '',
      this.createdUserid = 0,
      this.authUserid = 0,
      this.deauthNarration = '',
      @JsonKey(name: 'user_type') this.userType = 22});

  factory _$MobileCheckDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileCheckDataModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String mobile;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey(name: 'user_ref')
  final String regRef;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final int processStatus;
  @override
  @JsonKey()
  final String authStatus;
  @override
  @JsonKey()
  final String createdTime;
  @override
  @JsonKey()
  final String authTime;
  @override
  @JsonKey()
  final int createdUserid;
  @override
  @JsonKey()
  final int authUserid;
  @override
  @JsonKey()
  final String deauthNarration;
  @override
  @JsonKey(name: 'user_type')
  final int userType;

  @override
  String toString() {
    return 'MobileCheckDataModel(id: $id, mobile: $mobile, email: $email, regRef: $regRef, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime, createdUserid: $createdUserid, authUserid: $authUserid, deauthNarration: $deauthNarration, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileCheckDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.authTime, authTime) ||
                other.authTime == authTime) &&
            (identical(other.createdUserid, createdUserid) ||
                other.createdUserid == createdUserid) &&
            (identical(other.authUserid, authUserid) ||
                other.authUserid == authUserid) &&
            (identical(other.deauthNarration, deauthNarration) ||
                other.deauthNarration == deauthNarration) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mobile,
      email,
      regRef,
      status,
      processStatus,
      authStatus,
      createdTime,
      authTime,
      createdUserid,
      authUserid,
      deauthNarration,
      userType);

  /// Create a copy of MobileCheckDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileCheckDataModelImplCopyWith<_$MobileCheckDataModelImpl>
      get copyWith =>
          __$$MobileCheckDataModelImplCopyWithImpl<_$MobileCheckDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileCheckDataModelImplToJson(
      this,
    );
  }
}

abstract class _MobileCheckDataModel implements MobileCheckDataModel {
  const factory _MobileCheckDataModel(
          {final int id,
          final String mobile,
          final String email,
          @JsonKey(name: 'user_ref') final String regRef,
          final int status,
          final int processStatus,
          final String authStatus,
          final String createdTime,
          final String authTime,
          final int createdUserid,
          final int authUserid,
          final String deauthNarration,
          @JsonKey(name: 'user_type') final int userType}) =
      _$MobileCheckDataModelImpl;

  factory _MobileCheckDataModel.fromJson(Map<String, dynamic> json) =
      _$MobileCheckDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get mobile;
  @override
  String get email;
  @override
  @JsonKey(name: 'user_ref')
  String get regRef;
  @override
  int get status;
  @override
  int get processStatus;
  @override
  String get authStatus;
  @override
  String get createdTime;
  @override
  String get authTime;
  @override
  int get createdUserid;
  @override
  int get authUserid;
  @override
  String get deauthNarration;
  @override
  @JsonKey(name: 'user_type')
  int get userType;

  /// Create a copy of MobileCheckDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileCheckDataModelImplCopyWith<_$MobileCheckDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
