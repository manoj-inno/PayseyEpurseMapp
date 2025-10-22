// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_kyc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterKycRequestModel _$RegisterKycRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterKycRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterKycRequestModel {
  @JsonKey(name: 'reg_ref')
  String get regRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  String get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nationality')
  int get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_id')
  String get documentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'optional_doc_id')
  String get optionalDocId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  String get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_expiry_date')
  String get dateOfExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_issue_date')
  String get dateOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: 'pan_id')
  String get panIdNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_worth')
  int get netWorth => throw _privateConstructorUsedError;
  @JsonKey(name: 'annual_income')
  int get annualIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'religion')
  int get religion => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  int get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'marital_status')
  String get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'disability')
  int get disability => throw _privateConstructorUsedError;
  @JsonKey(name: 'qualification')
  int get qualification => throw _privateConstructorUsedError;

  /// Serializes this RegisterKycRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterKycRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterKycRequestModelCopyWith<RegisterKycRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterKycRequestModelCopyWith<$Res> {
  factory $RegisterKycRequestModelCopyWith(RegisterKycRequestModel value,
          $Res Function(RegisterKycRequestModel) then) =
      _$RegisterKycRequestModelCopyWithImpl<$Res, RegisterKycRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reg_ref') String regRef,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name') String middleName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nationality') int nationality,
      @JsonKey(name: 'document_id') String documentId,
      @JsonKey(name: 'optional_doc_id') String optionalDocId,
      @JsonKey(name: 'dob') String dob,
      @JsonKey(name: 'doc_expiry_date') String dateOfExpiry,
      @JsonKey(name: 'doc_issue_date') String dateOfIssue,
      @JsonKey(name: 'pan_id') String panIdNumber,
      @JsonKey(name: 'net_worth') int netWorth,
      @JsonKey(name: 'annual_income') int annualIncome,
      @JsonKey(name: 'religion') int religion,
      @JsonKey(name: 'category') int category,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'marital_status') String maritalStatus,
      @JsonKey(name: 'disability') int disability,
      @JsonKey(name: 'qualification') int qualification});
}

/// @nodoc
class _$RegisterKycRequestModelCopyWithImpl<$Res,
        $Val extends RegisterKycRequestModel>
    implements $RegisterKycRequestModelCopyWith<$Res> {
  _$RegisterKycRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterKycRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regRef = null,
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? nationality = null,
    Object? documentId = null,
    Object? optionalDocId = null,
    Object? dob = null,
    Object? dateOfExpiry = null,
    Object? dateOfIssue = null,
    Object? panIdNumber = null,
    Object? netWorth = null,
    Object? annualIncome = null,
    Object? religion = null,
    Object? category = null,
    Object? gender = null,
    Object? maritalStatus = null,
    Object? disability = null,
    Object? qualification = null,
  }) {
    return _then(_value.copyWith(
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      optionalDocId: null == optionalDocId
          ? _value.optionalDocId
          : optionalDocId // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfExpiry: null == dateOfExpiry
          ? _value.dateOfExpiry
          : dateOfExpiry // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfIssue: null == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as String,
      panIdNumber: null == panIdNumber
          ? _value.panIdNumber
          : panIdNumber // ignore: cast_nullable_to_non_nullable
              as String,
      netWorth: null == netWorth
          ? _value.netWorth
          : netWorth // ignore: cast_nullable_to_non_nullable
              as int,
      annualIncome: null == annualIncome
          ? _value.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as int,
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
      disability: null == disability
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as int,
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterKycRequestModelImplCopyWith<$Res>
    implements $RegisterKycRequestModelCopyWith<$Res> {
  factory _$$RegisterKycRequestModelImplCopyWith(
          _$RegisterKycRequestModelImpl value,
          $Res Function(_$RegisterKycRequestModelImpl) then) =
      __$$RegisterKycRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reg_ref') String regRef,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name') String middleName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nationality') int nationality,
      @JsonKey(name: 'document_id') String documentId,
      @JsonKey(name: 'optional_doc_id') String optionalDocId,
      @JsonKey(name: 'dob') String dob,
      @JsonKey(name: 'doc_expiry_date') String dateOfExpiry,
      @JsonKey(name: 'doc_issue_date') String dateOfIssue,
      @JsonKey(name: 'pan_id') String panIdNumber,
      @JsonKey(name: 'net_worth') int netWorth,
      @JsonKey(name: 'annual_income') int annualIncome,
      @JsonKey(name: 'religion') int religion,
      @JsonKey(name: 'category') int category,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'marital_status') String maritalStatus,
      @JsonKey(name: 'disability') int disability,
      @JsonKey(name: 'qualification') int qualification});
}

/// @nodoc
class __$$RegisterKycRequestModelImplCopyWithImpl<$Res>
    extends _$RegisterKycRequestModelCopyWithImpl<$Res,
        _$RegisterKycRequestModelImpl>
    implements _$$RegisterKycRequestModelImplCopyWith<$Res> {
  __$$RegisterKycRequestModelImplCopyWithImpl(
      _$RegisterKycRequestModelImpl _value,
      $Res Function(_$RegisterKycRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regRef = null,
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? nationality = null,
    Object? documentId = null,
    Object? optionalDocId = null,
    Object? dob = null,
    Object? dateOfExpiry = null,
    Object? dateOfIssue = null,
    Object? panIdNumber = null,
    Object? netWorth = null,
    Object? annualIncome = null,
    Object? religion = null,
    Object? category = null,
    Object? gender = null,
    Object? maritalStatus = null,
    Object? disability = null,
    Object? qualification = null,
  }) {
    return _then(_$RegisterKycRequestModelImpl(
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      optionalDocId: null == optionalDocId
          ? _value.optionalDocId
          : optionalDocId // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfExpiry: null == dateOfExpiry
          ? _value.dateOfExpiry
          : dateOfExpiry // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfIssue: null == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as String,
      panIdNumber: null == panIdNumber
          ? _value.panIdNumber
          : panIdNumber // ignore: cast_nullable_to_non_nullable
              as String,
      netWorth: null == netWorth
          ? _value.netWorth
          : netWorth // ignore: cast_nullable_to_non_nullable
              as int,
      annualIncome: null == annualIncome
          ? _value.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as int,
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
      disability: null == disability
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as int,
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterKycRequestModelImpl implements _RegisterKycRequestModel {
  const _$RegisterKycRequestModelImpl(
      {@JsonKey(name: 'reg_ref') required this.regRef,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'middle_name') required this.middleName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'nationality') required this.nationality,
      @JsonKey(name: 'document_id') required this.documentId,
      @JsonKey(name: 'optional_doc_id') required this.optionalDocId,
      @JsonKey(name: 'dob') required this.dob,
      @JsonKey(name: 'doc_expiry_date') required this.dateOfExpiry,
      @JsonKey(name: 'doc_issue_date') required this.dateOfIssue,
      @JsonKey(name: 'pan_id') required this.panIdNumber,
      @JsonKey(name: 'net_worth') required this.netWorth,
      @JsonKey(name: 'annual_income') required this.annualIncome,
      @JsonKey(name: 'religion') required this.religion,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'marital_status') required this.maritalStatus,
      @JsonKey(name: 'disability') required this.disability,
      @JsonKey(name: 'qualification') required this.qualification});

  factory _$RegisterKycRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterKycRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'reg_ref')
  final String regRef;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'middle_name')
  final String middleName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'nationality')
  final int nationality;
  @override
  @JsonKey(name: 'document_id')
  final String documentId;
  @override
  @JsonKey(name: 'optional_doc_id')
  final String optionalDocId;
  @override
  @JsonKey(name: 'dob')
  final String dob;
  @override
  @JsonKey(name: 'doc_expiry_date')
  final String dateOfExpiry;
  @override
  @JsonKey(name: 'doc_issue_date')
  final String dateOfIssue;
  @override
  @JsonKey(name: 'pan_id')
  final String panIdNumber;
  @override
  @JsonKey(name: 'net_worth')
  final int netWorth;
  @override
  @JsonKey(name: 'annual_income')
  final int annualIncome;
  @override
  @JsonKey(name: 'religion')
  final int religion;
  @override
  @JsonKey(name: 'category')
  final int category;
  @override
  @JsonKey(name: 'gender')
  final int gender;
  @override
  @JsonKey(name: 'marital_status')
  final String maritalStatus;
  @override
  @JsonKey(name: 'disability')
  final int disability;
  @override
  @JsonKey(name: 'qualification')
  final int qualification;

  @override
  String toString() {
    return 'RegisterKycRequestModel(regRef: $regRef, firstName: $firstName, middleName: $middleName, lastName: $lastName, nationality: $nationality, documentId: $documentId, optionalDocId: $optionalDocId, dob: $dob, dateOfExpiry: $dateOfExpiry, dateOfIssue: $dateOfIssue, panIdNumber: $panIdNumber, netWorth: $netWorth, annualIncome: $annualIncome, religion: $religion, category: $category, gender: $gender, maritalStatus: $maritalStatus, disability: $disability, qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterKycRequestModelImpl &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.optionalDocId, optionalDocId) ||
                other.optionalDocId == optionalDocId) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.dateOfExpiry, dateOfExpiry) ||
                other.dateOfExpiry == dateOfExpiry) &&
            (identical(other.dateOfIssue, dateOfIssue) ||
                other.dateOfIssue == dateOfIssue) &&
            (identical(other.panIdNumber, panIdNumber) ||
                other.panIdNumber == panIdNumber) &&
            (identical(other.netWorth, netWorth) ||
                other.netWorth == netWorth) &&
            (identical(other.annualIncome, annualIncome) ||
                other.annualIncome == annualIncome) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.disability, disability) ||
                other.disability == disability) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        regRef,
        firstName,
        middleName,
        lastName,
        nationality,
        documentId,
        optionalDocId,
        dob,
        dateOfExpiry,
        dateOfIssue,
        panIdNumber,
        netWorth,
        annualIncome,
        religion,
        category,
        gender,
        maritalStatus,
        disability,
        qualification
      ]);

  /// Create a copy of RegisterKycRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterKycRequestModelImplCopyWith<_$RegisterKycRequestModelImpl>
      get copyWith => __$$RegisterKycRequestModelImplCopyWithImpl<
          _$RegisterKycRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterKycRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterKycRequestModel implements RegisterKycRequestModel {
  const factory _RegisterKycRequestModel(
          {@JsonKey(name: 'reg_ref') required final String regRef,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'middle_name') required final String middleName,
          @JsonKey(name: 'last_name') required final String lastName,
          @JsonKey(name: 'nationality') required final int nationality,
          @JsonKey(name: 'document_id') required final String documentId,
          @JsonKey(name: 'optional_doc_id') required final String optionalDocId,
          @JsonKey(name: 'dob') required final String dob,
          @JsonKey(name: 'doc_expiry_date') required final String dateOfExpiry,
          @JsonKey(name: 'doc_issue_date') required final String dateOfIssue,
          @JsonKey(name: 'pan_id') required final String panIdNumber,
          @JsonKey(name: 'net_worth') required final int netWorth,
          @JsonKey(name: 'annual_income') required final int annualIncome,
          @JsonKey(name: 'religion') required final int religion,
          @JsonKey(name: 'category') required final int category,
          @JsonKey(name: 'gender') required final int gender,
          @JsonKey(name: 'marital_status') required final String maritalStatus,
          @JsonKey(name: 'disability') required final int disability,
          @JsonKey(name: 'qualification') required final int qualification}) =
      _$RegisterKycRequestModelImpl;

  factory _RegisterKycRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegisterKycRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'reg_ref')
  String get regRef;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'middle_name')
  String get middleName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'nationality')
  int get nationality;
  @override
  @JsonKey(name: 'document_id')
  String get documentId;
  @override
  @JsonKey(name: 'optional_doc_id')
  String get optionalDocId;
  @override
  @JsonKey(name: 'dob')
  String get dob;
  @override
  @JsonKey(name: 'doc_expiry_date')
  String get dateOfExpiry;
  @override
  @JsonKey(name: 'doc_issue_date')
  String get dateOfIssue;
  @override
  @JsonKey(name: 'pan_id')
  String get panIdNumber;
  @override
  @JsonKey(name: 'net_worth')
  int get netWorth;
  @override
  @JsonKey(name: 'annual_income')
  int get annualIncome;
  @override
  @JsonKey(name: 'religion')
  int get religion;
  @override
  @JsonKey(name: 'category')
  int get category;
  @override
  @JsonKey(name: 'gender')
  int get gender;
  @override
  @JsonKey(name: 'marital_status')
  String get maritalStatus;
  @override
  @JsonKey(name: 'disability')
  int get disability;
  @override
  @JsonKey(name: 'qualification')
  int get qualification;

  /// Create a copy of RegisterKycRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterKycRequestModelImplCopyWith<_$RegisterKycRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegisterKycResponseModel _$RegisterKycResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterKycResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterKycResponseModel {
  String get regRef => throw _privateConstructorUsedError;
  int get regStatus => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  int get userType => throw _privateConstructorUsedError;

  /// Serializes this RegisterKycResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterKycResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterKycResponseModelCopyWith<RegisterKycResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterKycResponseModelCopyWith<$Res> {
  factory $RegisterKycResponseModelCopyWith(RegisterKycResponseModel value,
          $Res Function(RegisterKycResponseModel) then) =
      _$RegisterKycResponseModelCopyWithImpl<$Res, RegisterKycResponseModel>;
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
class _$RegisterKycResponseModelCopyWithImpl<$Res,
        $Val extends RegisterKycResponseModel>
    implements $RegisterKycResponseModelCopyWith<$Res> {
  _$RegisterKycResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterKycResponseModel
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
abstract class _$$RegisterKycResponseModelImplCopyWith<$Res>
    implements $RegisterKycResponseModelCopyWith<$Res> {
  factory _$$RegisterKycResponseModelImplCopyWith(
          _$RegisterKycResponseModelImpl value,
          $Res Function(_$RegisterKycResponseModelImpl) then) =
      __$$RegisterKycResponseModelImplCopyWithImpl<$Res>;
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
class __$$RegisterKycResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterKycResponseModelCopyWithImpl<$Res,
        _$RegisterKycResponseModelImpl>
    implements _$$RegisterKycResponseModelImplCopyWith<$Res> {
  __$$RegisterKycResponseModelImplCopyWithImpl(
      _$RegisterKycResponseModelImpl _value,
      $Res Function(_$RegisterKycResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycResponseModel
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
    return _then(_$RegisterKycResponseModelImpl(
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
class _$RegisterKycResponseModelImpl extends _RegisterKycResponseModel {
  const _$RegisterKycResponseModelImpl(
      {required this.regRef,
      required this.regStatus,
      required this.status,
      required this.message,
      required this.remark,
      required this.userType})
      : super._();

  factory _$RegisterKycResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterKycResponseModelImplFromJson(json);

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
    return 'RegisterKycResponseModel(regRef: $regRef, regStatus: $regStatus, status: $status, message: $message, remark: $remark, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterKycResponseModelImpl &&
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

  /// Create a copy of RegisterKycResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterKycResponseModelImplCopyWith<_$RegisterKycResponseModelImpl>
      get copyWith => __$$RegisterKycResponseModelImplCopyWithImpl<
          _$RegisterKycResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterKycResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterKycResponseModel extends RegisterKycResponseModel {
  const factory _RegisterKycResponseModel(
      {required final String regRef,
      required final int regStatus,
      required final String status,
      required final String message,
      required final String remark,
      required final int userType}) = _$RegisterKycResponseModelImpl;
  const _RegisterKycResponseModel._() : super._();

  factory _RegisterKycResponseModel.fromJson(Map<String, dynamic> json) =
      _$RegisterKycResponseModelImpl.fromJson;

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

  /// Create a copy of RegisterKycResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterKycResponseModelImplCopyWith<_$RegisterKycResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
