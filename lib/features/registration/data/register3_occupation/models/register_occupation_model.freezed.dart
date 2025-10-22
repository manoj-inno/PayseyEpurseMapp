// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_occupation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterOccupationModel _$RegisterOccupationModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterOccupationModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterOccupationModel {
  @JsonKey(name: 'user_ref')
  String get refNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_of_income')
  int get sourceOfFund => throw _privateConstructorUsedError;
  int get occupation => throw _privateConstructorUsedError;
  @JsonKey(name: 'employer_name')
  String? get employer => throw _privateConstructorUsedError;
  @JsonKey(name: 'employment_status')
  String? get employmentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  String? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_of_position')
  String? get placeOfPosting => throw _privateConstructorUsedError;
  @JsonKey(name: 'annual_income')
  int? get salaryRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_worth')
  int? get netWorth => throw _privateConstructorUsedError;
  @JsonKey(name: 'office_full_address')
  String? get officeAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'office_phone_number')
  String? get officePhoneNumber => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;

  /// Serializes this RegisterOccupationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterOccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterOccupationModelCopyWith<RegisterOccupationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterOccupationModelCopyWith<$Res> {
  factory $RegisterOccupationModelCopyWith(RegisterOccupationModel value,
          $Res Function(RegisterOccupationModel) then) =
      _$RegisterOccupationModelCopyWithImpl<$Res, RegisterOccupationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ref') String refNumber,
      @JsonKey(name: 'source_of_income') int sourceOfFund,
      int occupation,
      @JsonKey(name: 'employer_name') String? employer,
      @JsonKey(name: 'employment_status') String? employmentStatus,
      @JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'place_of_position') String? placeOfPosting,
      @JsonKey(name: 'annual_income') int? salaryRange,
      @JsonKey(name: 'net_worth') int? netWorth,
      @JsonKey(name: 'office_full_address') String? officeAddress,
      @JsonKey(name: 'office_phone_number') String? officePhoneNumber,
      String? designation});
}

/// @nodoc
class _$RegisterOccupationModelCopyWithImpl<$Res,
        $Val extends RegisterOccupationModel>
    implements $RegisterOccupationModelCopyWith<$Res> {
  _$RegisterOccupationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterOccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? sourceOfFund = null,
    Object? occupation = null,
    Object? employer = freezed,
    Object? employmentStatus = freezed,
    Object? employeeId = freezed,
    Object? placeOfPosting = freezed,
    Object? salaryRange = freezed,
    Object? netWorth = freezed,
    Object? officeAddress = freezed,
    Object? officePhoneNumber = freezed,
    Object? designation = freezed,
  }) {
    return _then(_value.copyWith(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      sourceOfFund: null == sourceOfFund
          ? _value.sourceOfFund
          : sourceOfFund // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as int,
      employer: freezed == employer
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as String?,
      employmentStatus: freezed == employmentStatus
          ? _value.employmentStatus
          : employmentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfPosting: freezed == placeOfPosting
          ? _value.placeOfPosting
          : placeOfPosting // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryRange: freezed == salaryRange
          ? _value.salaryRange
          : salaryRange // ignore: cast_nullable_to_non_nullable
              as int?,
      netWorth: freezed == netWorth
          ? _value.netWorth
          : netWorth // ignore: cast_nullable_to_non_nullable
              as int?,
      officeAddress: freezed == officeAddress
          ? _value.officeAddress
          : officeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      officePhoneNumber: freezed == officePhoneNumber
          ? _value.officePhoneNumber
          : officePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterOccupationModelImplCopyWith<$Res>
    implements $RegisterOccupationModelCopyWith<$Res> {
  factory _$$RegisterOccupationModelImplCopyWith(
          _$RegisterOccupationModelImpl value,
          $Res Function(_$RegisterOccupationModelImpl) then) =
      __$$RegisterOccupationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ref') String refNumber,
      @JsonKey(name: 'source_of_income') int sourceOfFund,
      int occupation,
      @JsonKey(name: 'employer_name') String? employer,
      @JsonKey(name: 'employment_status') String? employmentStatus,
      @JsonKey(name: 'employee_id') String? employeeId,
      @JsonKey(name: 'place_of_position') String? placeOfPosting,
      @JsonKey(name: 'annual_income') int? salaryRange,
      @JsonKey(name: 'net_worth') int? netWorth,
      @JsonKey(name: 'office_full_address') String? officeAddress,
      @JsonKey(name: 'office_phone_number') String? officePhoneNumber,
      String? designation});
}

/// @nodoc
class __$$RegisterOccupationModelImplCopyWithImpl<$Res>
    extends _$RegisterOccupationModelCopyWithImpl<$Res,
        _$RegisterOccupationModelImpl>
    implements _$$RegisterOccupationModelImplCopyWith<$Res> {
  __$$RegisterOccupationModelImplCopyWithImpl(
      _$RegisterOccupationModelImpl _value,
      $Res Function(_$RegisterOccupationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterOccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? sourceOfFund = null,
    Object? occupation = null,
    Object? employer = freezed,
    Object? employmentStatus = freezed,
    Object? employeeId = freezed,
    Object? placeOfPosting = freezed,
    Object? salaryRange = freezed,
    Object? netWorth = freezed,
    Object? officeAddress = freezed,
    Object? officePhoneNumber = freezed,
    Object? designation = freezed,
  }) {
    return _then(_$RegisterOccupationModelImpl(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      sourceOfFund: null == sourceOfFund
          ? _value.sourceOfFund
          : sourceOfFund // ignore: cast_nullable_to_non_nullable
              as int,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as int,
      employer: freezed == employer
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as String?,
      employmentStatus: freezed == employmentStatus
          ? _value.employmentStatus
          : employmentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfPosting: freezed == placeOfPosting
          ? _value.placeOfPosting
          : placeOfPosting // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryRange: freezed == salaryRange
          ? _value.salaryRange
          : salaryRange // ignore: cast_nullable_to_non_nullable
              as int?,
      netWorth: freezed == netWorth
          ? _value.netWorth
          : netWorth // ignore: cast_nullable_to_non_nullable
              as int?,
      officeAddress: freezed == officeAddress
          ? _value.officeAddress
          : officeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      officePhoneNumber: freezed == officePhoneNumber
          ? _value.officePhoneNumber
          : officePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterOccupationModelImpl
    with DiagnosticableTreeMixin
    implements _RegisterOccupationModel {
  const _$RegisterOccupationModelImpl(
      {@JsonKey(name: 'user_ref') required this.refNumber,
      @JsonKey(name: 'source_of_income') required this.sourceOfFund,
      required this.occupation,
      @JsonKey(name: 'employer_name') this.employer,
      @JsonKey(name: 'employment_status') this.employmentStatus,
      @JsonKey(name: 'employee_id') this.employeeId,
      @JsonKey(name: 'place_of_position') this.placeOfPosting,
      @JsonKey(name: 'annual_income') this.salaryRange,
      @JsonKey(name: 'net_worth') this.netWorth,
      @JsonKey(name: 'office_full_address') this.officeAddress,
      @JsonKey(name: 'office_phone_number') this.officePhoneNumber,
      this.designation});

  factory _$RegisterOccupationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterOccupationModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_ref')
  final String refNumber;
  @override
  @JsonKey(name: 'source_of_income')
  final int sourceOfFund;
  @override
  final int occupation;
  @override
  @JsonKey(name: 'employer_name')
  final String? employer;
  @override
  @JsonKey(name: 'employment_status')
  final String? employmentStatus;
  @override
  @JsonKey(name: 'employee_id')
  final String? employeeId;
  @override
  @JsonKey(name: 'place_of_position')
  final String? placeOfPosting;
  @override
  @JsonKey(name: 'annual_income')
  final int? salaryRange;
  @override
  @JsonKey(name: 'net_worth')
  final int? netWorth;
  @override
  @JsonKey(name: 'office_full_address')
  final String? officeAddress;
  @override
  @JsonKey(name: 'office_phone_number')
  final String? officePhoneNumber;
  @override
  final String? designation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterOccupationModel(refNumber: $refNumber, sourceOfFund: $sourceOfFund, occupation: $occupation, employer: $employer, employmentStatus: $employmentStatus, employeeId: $employeeId, placeOfPosting: $placeOfPosting, salaryRange: $salaryRange, netWorth: $netWorth, officeAddress: $officeAddress, officePhoneNumber: $officePhoneNumber, designation: $designation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterOccupationModel'))
      ..add(DiagnosticsProperty('refNumber', refNumber))
      ..add(DiagnosticsProperty('sourceOfFund', sourceOfFund))
      ..add(DiagnosticsProperty('occupation', occupation))
      ..add(DiagnosticsProperty('employer', employer))
      ..add(DiagnosticsProperty('employmentStatus', employmentStatus))
      ..add(DiagnosticsProperty('employeeId', employeeId))
      ..add(DiagnosticsProperty('placeOfPosting', placeOfPosting))
      ..add(DiagnosticsProperty('salaryRange', salaryRange))
      ..add(DiagnosticsProperty('netWorth', netWorth))
      ..add(DiagnosticsProperty('officeAddress', officeAddress))
      ..add(DiagnosticsProperty('officePhoneNumber', officePhoneNumber))
      ..add(DiagnosticsProperty('designation', designation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterOccupationModelImpl &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber) &&
            (identical(other.sourceOfFund, sourceOfFund) ||
                other.sourceOfFund == sourceOfFund) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.employer, employer) ||
                other.employer == employer) &&
            (identical(other.employmentStatus, employmentStatus) ||
                other.employmentStatus == employmentStatus) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.placeOfPosting, placeOfPosting) ||
                other.placeOfPosting == placeOfPosting) &&
            (identical(other.salaryRange, salaryRange) ||
                other.salaryRange == salaryRange) &&
            (identical(other.netWorth, netWorth) ||
                other.netWorth == netWorth) &&
            (identical(other.officeAddress, officeAddress) ||
                other.officeAddress == officeAddress) &&
            (identical(other.officePhoneNumber, officePhoneNumber) ||
                other.officePhoneNumber == officePhoneNumber) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      refNumber,
      sourceOfFund,
      occupation,
      employer,
      employmentStatus,
      employeeId,
      placeOfPosting,
      salaryRange,
      netWorth,
      officeAddress,
      officePhoneNumber,
      designation);

  /// Create a copy of RegisterOccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterOccupationModelImplCopyWith<_$RegisterOccupationModelImpl>
      get copyWith => __$$RegisterOccupationModelImplCopyWithImpl<
          _$RegisterOccupationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterOccupationModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterOccupationModel implements RegisterOccupationModel {
  const factory _RegisterOccupationModel(
      {@JsonKey(name: 'user_ref') required final String refNumber,
      @JsonKey(name: 'source_of_income') required final int sourceOfFund,
      required final int occupation,
      @JsonKey(name: 'employer_name') final String? employer,
      @JsonKey(name: 'employment_status') final String? employmentStatus,
      @JsonKey(name: 'employee_id') final String? employeeId,
      @JsonKey(name: 'place_of_position') final String? placeOfPosting,
      @JsonKey(name: 'annual_income') final int? salaryRange,
      @JsonKey(name: 'net_worth') final int? netWorth,
      @JsonKey(name: 'office_full_address') final String? officeAddress,
      @JsonKey(name: 'office_phone_number') final String? officePhoneNumber,
      final String? designation}) = _$RegisterOccupationModelImpl;

  factory _RegisterOccupationModel.fromJson(Map<String, dynamic> json) =
      _$RegisterOccupationModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_ref')
  String get refNumber;
  @override
  @JsonKey(name: 'source_of_income')
  int get sourceOfFund;
  @override
  int get occupation;
  @override
  @JsonKey(name: 'employer_name')
  String? get employer;
  @override
  @JsonKey(name: 'employment_status')
  String? get employmentStatus;
  @override
  @JsonKey(name: 'employee_id')
  String? get employeeId;
  @override
  @JsonKey(name: 'place_of_position')
  String? get placeOfPosting;
  @override
  @JsonKey(name: 'annual_income')
  int? get salaryRange;
  @override
  @JsonKey(name: 'net_worth')
  int? get netWorth;
  @override
  @JsonKey(name: 'office_full_address')
  String? get officeAddress;
  @override
  @JsonKey(name: 'office_phone_number')
  String? get officePhoneNumber;
  @override
  String? get designation;

  /// Create a copy of RegisterOccupationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterOccupationModelImplCopyWith<_$RegisterOccupationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterOccupationResponseModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_ref')
  String get regRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'reg_status')
  int get regStatus => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Create a copy of RegisterOccupationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterOccupationResponseModelCopyWith<RegisterOccupationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterOccupationResponseModelCopyWith<$Res> {
  factory $RegisterOccupationResponseModelCopyWith(
          RegisterOccupationResponseModel value,
          $Res Function(RegisterOccupationResponseModel) then) =
      _$RegisterOccupationResponseModelCopyWithImpl<$Res,
          RegisterOccupationResponseModel>;
  @useResult
  $Res call(
      {int code,
      String message,
      @JsonKey(name: 'reg_ref') String regRef,
      @JsonKey(name: 'reg_status') int regStatus,
      String remark,
      String status});
}

/// @nodoc
class _$RegisterOccupationResponseModelCopyWithImpl<$Res,
        $Val extends RegisterOccupationResponseModel>
    implements $RegisterOccupationResponseModelCopyWith<$Res> {
  _$RegisterOccupationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterOccupationResponseModel
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterOccupationResponseModelImplCopyWith<$Res>
    implements $RegisterOccupationResponseModelCopyWith<$Res> {
  factory _$$RegisterOccupationResponseModelImplCopyWith(
          _$RegisterOccupationResponseModelImpl value,
          $Res Function(_$RegisterOccupationResponseModelImpl) then) =
      __$$RegisterOccupationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      @JsonKey(name: 'reg_ref') String regRef,
      @JsonKey(name: 'reg_status') int regStatus,
      String remark,
      String status});
}

/// @nodoc
class __$$RegisterOccupationResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterOccupationResponseModelCopyWithImpl<$Res,
        _$RegisterOccupationResponseModelImpl>
    implements _$$RegisterOccupationResponseModelImplCopyWith<$Res> {
  __$$RegisterOccupationResponseModelImplCopyWithImpl(
      _$RegisterOccupationResponseModelImpl _value,
      $Res Function(_$RegisterOccupationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterOccupationResponseModel
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
  }) {
    return _then(_$RegisterOccupationResponseModelImpl(
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
    ));
  }
}

/// @nodoc

class _$RegisterOccupationResponseModelImpl
    with DiagnosticableTreeMixin
    implements _RegisterOccupationResponseModel {
  const _$RegisterOccupationResponseModelImpl(
      {required this.code,
      required this.message,
      @JsonKey(name: 'reg_ref') required this.regRef,
      @JsonKey(name: 'reg_status') required this.regStatus,
      required this.remark,
      required this.status});

  @override
  final int code;
  @override
  final String message;
  @override
  @JsonKey(name: 'reg_ref')
  final String regRef;
  @override
  @JsonKey(name: 'reg_status')
  final int regStatus;
  @override
  final String remark;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterOccupationResponseModel(code: $code, message: $message, regRef: $regRef, regStatus: $regStatus, remark: $remark, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterOccupationResponseModel'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('regRef', regRef))
      ..add(DiagnosticsProperty('regStatus', regStatus))
      ..add(DiagnosticsProperty('remark', remark))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterOccupationResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.regStatus, regStatus) ||
                other.regStatus == regStatus) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, regRef, regStatus, remark, status);

  /// Create a copy of RegisterOccupationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterOccupationResponseModelImplCopyWith<
          _$RegisterOccupationResponseModelImpl>
      get copyWith => __$$RegisterOccupationResponseModelImplCopyWithImpl<
          _$RegisterOccupationResponseModelImpl>(this, _$identity);
}

abstract class _RegisterOccupationResponseModel
    implements RegisterOccupationResponseModel {
  const factory _RegisterOccupationResponseModel(
      {required final int code,
      required final String message,
      @JsonKey(name: 'reg_ref') required final String regRef,
      @JsonKey(name: 'reg_status') required final int regStatus,
      required final String remark,
      required final String status}) = _$RegisterOccupationResponseModelImpl;

  @override
  int get code;
  @override
  String get message;
  @override
  @JsonKey(name: 'reg_ref')
  String get regRef;
  @override
  @JsonKey(name: 'reg_status')
  int get regStatus;
  @override
  String get remark;
  @override
  String get status;

  /// Create a copy of RegisterOccupationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterOccupationResponseModelImplCopyWith<
          _$RegisterOccupationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
