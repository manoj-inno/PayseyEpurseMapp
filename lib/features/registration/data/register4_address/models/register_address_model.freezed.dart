// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterAddressRequestModel {
  List<String> get imagePaths => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get addressDetails =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegisterAddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterAddressRequestModelCopyWith<RegisterAddressRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterAddressRequestModelCopyWith<$Res> {
  factory $RegisterAddressRequestModelCopyWith(
          RegisterAddressRequestModel value,
          $Res Function(RegisterAddressRequestModel) then) =
      _$RegisterAddressRequestModelCopyWithImpl<$Res,
          RegisterAddressRequestModel>;
  @useResult
  $Res call(
      {List<String> imagePaths, List<Map<String, dynamic>> addressDetails});
}

/// @nodoc
class _$RegisterAddressRequestModelCopyWithImpl<$Res,
        $Val extends RegisterAddressRequestModel>
    implements $RegisterAddressRequestModelCopyWith<$Res> {
  _$RegisterAddressRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterAddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePaths = null,
    Object? addressDetails = null,
  }) {
    return _then(_value.copyWith(
      imagePaths: null == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addressDetails: null == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterAddressRequestModelImplCopyWith<$Res>
    implements $RegisterAddressRequestModelCopyWith<$Res> {
  factory _$$RegisterAddressRequestModelImplCopyWith(
          _$RegisterAddressRequestModelImpl value,
          $Res Function(_$RegisterAddressRequestModelImpl) then) =
      __$$RegisterAddressRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> imagePaths, List<Map<String, dynamic>> addressDetails});
}

/// @nodoc
class __$$RegisterAddressRequestModelImplCopyWithImpl<$Res>
    extends _$RegisterAddressRequestModelCopyWithImpl<$Res,
        _$RegisterAddressRequestModelImpl>
    implements _$$RegisterAddressRequestModelImplCopyWith<$Res> {
  __$$RegisterAddressRequestModelImplCopyWithImpl(
      _$RegisterAddressRequestModelImpl _value,
      $Res Function(_$RegisterAddressRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterAddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePaths = null,
    Object? addressDetails = null,
  }) {
    return _then(_$RegisterAddressRequestModelImpl(
      imagePaths: null == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addressDetails: null == addressDetails
          ? _value._addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$RegisterAddressRequestModelImpl extends _RegisterAddressRequestModel
    with DiagnosticableTreeMixin {
  const _$RegisterAddressRequestModelImpl(
      {required final List<String> imagePaths,
      required final List<Map<String, dynamic>> addressDetails})
      : _imagePaths = imagePaths,
        _addressDetails = addressDetails,
        super._();

  final List<String> _imagePaths;
  @override
  List<String> get imagePaths {
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePaths);
  }

  final List<Map<String, dynamic>> _addressDetails;
  @override
  List<Map<String, dynamic>> get addressDetails {
    if (_addressDetails is EqualUnmodifiableListView) return _addressDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressDetails);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAddressRequestModel(imagePaths: $imagePaths, addressDetails: $addressDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAddressRequestModel'))
      ..add(DiagnosticsProperty('imagePaths', imagePaths))
      ..add(DiagnosticsProperty('addressDetails', addressDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterAddressRequestModelImpl &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths) &&
            const DeepCollectionEquality()
                .equals(other._addressDetails, _addressDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imagePaths),
      const DeepCollectionEquality().hash(_addressDetails));

  /// Create a copy of RegisterAddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterAddressRequestModelImplCopyWith<_$RegisterAddressRequestModelImpl>
      get copyWith => __$$RegisterAddressRequestModelImplCopyWithImpl<
          _$RegisterAddressRequestModelImpl>(this, _$identity);
}

abstract class _RegisterAddressRequestModel
    extends RegisterAddressRequestModel {
  const factory _RegisterAddressRequestModel(
          {required final List<String> imagePaths,
          required final List<Map<String, dynamic>> addressDetails}) =
      _$RegisterAddressRequestModelImpl;
  const _RegisterAddressRequestModel._() : super._();

  @override
  List<String> get imagePaths;
  @override
  List<Map<String, dynamic>> get addressDetails;

  /// Create a copy of RegisterAddressRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterAddressRequestModelImplCopyWith<_$RegisterAddressRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterAddressResponseModel {
  int get code => throw _privateConstructorUsedError;
  RegisterAddressData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Create a copy of RegisterAddressResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterAddressResponseModelCopyWith<RegisterAddressResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterAddressResponseModelCopyWith<$Res> {
  factory $RegisterAddressResponseModelCopyWith(
          RegisterAddressResponseModel value,
          $Res Function(RegisterAddressResponseModel) then) =
      _$RegisterAddressResponseModelCopyWithImpl<$Res,
          RegisterAddressResponseModel>;
  @useResult
  $Res call(
      {int code,
      RegisterAddressData data,
      String message,
      String remark,
      String status});

  $RegisterAddressDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RegisterAddressResponseModelCopyWithImpl<$Res,
        $Val extends RegisterAddressResponseModel>
    implements $RegisterAddressResponseModelCopyWith<$Res> {
  _$RegisterAddressResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterAddressResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? message = null,
    Object? remark = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterAddressData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RegisterAddressResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisterAddressDataCopyWith<$Res> get data {
    return $RegisterAddressDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterAddressResponseModelImplCopyWith<$Res>
    implements $RegisterAddressResponseModelCopyWith<$Res> {
  factory _$$RegisterAddressResponseModelImplCopyWith(
          _$RegisterAddressResponseModelImpl value,
          $Res Function(_$RegisterAddressResponseModelImpl) then) =
      __$$RegisterAddressResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      RegisterAddressData data,
      String message,
      String remark,
      String status});

  @override
  $RegisterAddressDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RegisterAddressResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterAddressResponseModelCopyWithImpl<$Res,
        _$RegisterAddressResponseModelImpl>
    implements _$$RegisterAddressResponseModelImplCopyWith<$Res> {
  __$$RegisterAddressResponseModelImplCopyWithImpl(
      _$RegisterAddressResponseModelImpl _value,
      $Res Function(_$RegisterAddressResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterAddressResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? message = null,
    Object? remark = null,
    Object? status = null,
  }) {
    return _then(_$RegisterAddressResponseModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterAddressData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterAddressResponseModelImpl
    with DiagnosticableTreeMixin
    implements _RegisterAddressResponseModel {
  const _$RegisterAddressResponseModelImpl(
      {required this.code,
      required this.data,
      required this.message,
      required this.remark,
      required this.status});

  @override
  final int code;
  @override
  final RegisterAddressData data;
  @override
  final String message;
  @override
  final String remark;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAddressResponseModel(code: $code, data: $data, message: $message, remark: $remark, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAddressResponseModel'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('remark', remark))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterAddressResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, data, message, remark, status);

  /// Create a copy of RegisterAddressResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterAddressResponseModelImplCopyWith<
          _$RegisterAddressResponseModelImpl>
      get copyWith => __$$RegisterAddressResponseModelImplCopyWithImpl<
          _$RegisterAddressResponseModelImpl>(this, _$identity);
}

abstract class _RegisterAddressResponseModel
    implements RegisterAddressResponseModel {
  const factory _RegisterAddressResponseModel(
      {required final int code,
      required final RegisterAddressData data,
      required final String message,
      required final String remark,
      required final String status}) = _$RegisterAddressResponseModelImpl;

  @override
  int get code;
  @override
  RegisterAddressData get data;
  @override
  String get message;
  @override
  String get remark;
  @override
  String get status;

  /// Create a copy of RegisterAddressResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterAddressResponseModelImplCopyWith<
          _$RegisterAddressResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegisterAddressData _$RegisterAddressDataFromJson(Map<String, dynamic> json) {
  return _RegisterAddressData.fromJson(json);
}

/// @nodoc
mixin _$RegisterAddressData {
  RegInfo get regInfo => throw _privateConstructorUsedError;

  /// Serializes this RegisterAddressData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterAddressDataCopyWith<RegisterAddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterAddressDataCopyWith<$Res> {
  factory $RegisterAddressDataCopyWith(
          RegisterAddressData value, $Res Function(RegisterAddressData) then) =
      _$RegisterAddressDataCopyWithImpl<$Res, RegisterAddressData>;
  @useResult
  $Res call({RegInfo regInfo});

  $RegInfoCopyWith<$Res> get regInfo;
}

/// @nodoc
class _$RegisterAddressDataCopyWithImpl<$Res, $Val extends RegisterAddressData>
    implements $RegisterAddressDataCopyWith<$Res> {
  _$RegisterAddressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regInfo = null,
  }) {
    return _then(_value.copyWith(
      regInfo: null == regInfo
          ? _value.regInfo
          : regInfo // ignore: cast_nullable_to_non_nullable
              as RegInfo,
    ) as $Val);
  }

  /// Create a copy of RegisterAddressData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegInfoCopyWith<$Res> get regInfo {
    return $RegInfoCopyWith<$Res>(_value.regInfo, (value) {
      return _then(_value.copyWith(regInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterAddressDataImplCopyWith<$Res>
    implements $RegisterAddressDataCopyWith<$Res> {
  factory _$$RegisterAddressDataImplCopyWith(_$RegisterAddressDataImpl value,
          $Res Function(_$RegisterAddressDataImpl) then) =
      __$$RegisterAddressDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegInfo regInfo});

  @override
  $RegInfoCopyWith<$Res> get regInfo;
}

/// @nodoc
class __$$RegisterAddressDataImplCopyWithImpl<$Res>
    extends _$RegisterAddressDataCopyWithImpl<$Res, _$RegisterAddressDataImpl>
    implements _$$RegisterAddressDataImplCopyWith<$Res> {
  __$$RegisterAddressDataImplCopyWithImpl(_$RegisterAddressDataImpl _value,
      $Res Function(_$RegisterAddressDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regInfo = null,
  }) {
    return _then(_$RegisterAddressDataImpl(
      regInfo: null == regInfo
          ? _value.regInfo
          : regInfo // ignore: cast_nullable_to_non_nullable
              as RegInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterAddressDataImpl
    with DiagnosticableTreeMixin
    implements _RegisterAddressData {
  const _$RegisterAddressDataImpl({required this.regInfo});

  factory _$RegisterAddressDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterAddressDataImplFromJson(json);

  @override
  final RegInfo regInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAddressData(regInfo: $regInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAddressData'))
      ..add(DiagnosticsProperty('regInfo', regInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterAddressDataImpl &&
            (identical(other.regInfo, regInfo) || other.regInfo == regInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, regInfo);

  /// Create a copy of RegisterAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterAddressDataImplCopyWith<_$RegisterAddressDataImpl> get copyWith =>
      __$$RegisterAddressDataImplCopyWithImpl<_$RegisterAddressDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterAddressDataImplToJson(
      this,
    );
  }
}

abstract class _RegisterAddressData implements RegisterAddressData {
  const factory _RegisterAddressData({required final RegInfo regInfo}) =
      _$RegisterAddressDataImpl;

  factory _RegisterAddressData.fromJson(Map<String, dynamic> json) =
      _$RegisterAddressDataImpl.fromJson;

  @override
  RegInfo get regInfo;

  /// Create a copy of RegisterAddressData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterAddressDataImplCopyWith<_$RegisterAddressDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegInfo _$RegInfoFromJson(Map<String, dynamic> json) {
  return _RegInfo.fromJson(json);
}

/// @nodoc
mixin _$RegInfo {
  int get userType => throw _privateConstructorUsedError;
  String get userRef => throw _privateConstructorUsedError;
  int get regStatus => throw _privateConstructorUsedError;

  /// Serializes this RegInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegInfoCopyWith<RegInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegInfoCopyWith<$Res> {
  factory $RegInfoCopyWith(RegInfo value, $Res Function(RegInfo) then) =
      _$RegInfoCopyWithImpl<$Res, RegInfo>;
  @useResult
  $Res call({int userType, String userRef, int regStatus});
}

/// @nodoc
class _$RegInfoCopyWithImpl<$Res, $Val extends RegInfo>
    implements $RegInfoCopyWith<$Res> {
  _$RegInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = null,
    Object? userRef = null,
    Object? regStatus = null,
  }) {
    return _then(_value.copyWith(
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      regStatus: null == regStatus
          ? _value.regStatus
          : regStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegInfoImplCopyWith<$Res> implements $RegInfoCopyWith<$Res> {
  factory _$$RegInfoImplCopyWith(
          _$RegInfoImpl value, $Res Function(_$RegInfoImpl) then) =
      __$$RegInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userType, String userRef, int regStatus});
}

/// @nodoc
class __$$RegInfoImplCopyWithImpl<$Res>
    extends _$RegInfoCopyWithImpl<$Res, _$RegInfoImpl>
    implements _$$RegInfoImplCopyWith<$Res> {
  __$$RegInfoImplCopyWithImpl(
      _$RegInfoImpl _value, $Res Function(_$RegInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = null,
    Object? userRef = null,
    Object? regStatus = null,
  }) {
    return _then(_$RegInfoImpl(
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      regStatus: null == regStatus
          ? _value.regStatus
          : regStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegInfoImpl with DiagnosticableTreeMixin implements _RegInfo {
  const _$RegInfoImpl(
      {required this.userType, required this.userRef, required this.regStatus});

  factory _$RegInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegInfoImplFromJson(json);

  @override
  final int userType;
  @override
  final String userRef;
  @override
  final int regStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegInfo(userType: $userType, userRef: $userRef, regStatus: $regStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegInfo'))
      ..add(DiagnosticsProperty('userType', userType))
      ..add(DiagnosticsProperty('userRef', userRef))
      ..add(DiagnosticsProperty('regStatus', regStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegInfoImpl &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.regStatus, regStatus) ||
                other.regStatus == regStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userType, userRef, regStatus);

  /// Create a copy of RegInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegInfoImplCopyWith<_$RegInfoImpl> get copyWith =>
      __$$RegInfoImplCopyWithImpl<_$RegInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegInfoImplToJson(
      this,
    );
  }
}

abstract class _RegInfo implements RegInfo {
  const factory _RegInfo(
      {required final int userType,
      required final String userRef,
      required final int regStatus}) = _$RegInfoImpl;

  factory _RegInfo.fromJson(Map<String, dynamic> json) = _$RegInfoImpl.fromJson;

  @override
  int get userType;
  @override
  String get userRef;
  @override
  int get regStatus;

  /// Create a copy of RegInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegInfoImplCopyWith<_$RegInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
