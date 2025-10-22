// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_kyc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterKycRequestModelImpl _$$RegisterKycRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterKycRequestModelImpl(
      regRef: json['reg_ref'] as String,
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String,
      lastName: json['last_name'] as String,
      nationality: (json['nationality'] as num).toInt(),
      documentId: json['document_id'] as String,
      optionalDocId: json['optional_doc_id'] as String,
      dob: json['dob'] as String,
      dateOfExpiry: json['doc_expiry_date'] as String,
      dateOfIssue: json['doc_issue_date'] as String,
      panIdNumber: json['pan_id'] as String,
      netWorth: (json['net_worth'] as num).toInt(),
      annualIncome: (json['annual_income'] as num).toInt(),
      religion: (json['religion'] as num).toInt(),
      category: (json['category'] as num).toInt(),
      gender: (json['gender'] as num).toInt(),
      maritalStatus: json['marital_status'] as String,
      disability: (json['disability'] as num).toInt(),
      qualification: (json['qualification'] as num).toInt(),
    );

Map<String, dynamic> _$$RegisterKycRequestModelImplToJson(
        _$RegisterKycRequestModelImpl instance) =>
    <String, dynamic>{
      'reg_ref': instance.regRef,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'nationality': instance.nationality,
      'document_id': instance.documentId,
      'optional_doc_id': instance.optionalDocId,
      'dob': instance.dob,
      'doc_expiry_date': instance.dateOfExpiry,
      'doc_issue_date': instance.dateOfIssue,
      'pan_id': instance.panIdNumber,
      'net_worth': instance.netWorth,
      'annual_income': instance.annualIncome,
      'religion': instance.religion,
      'category': instance.category,
      'gender': instance.gender,
      'marital_status': instance.maritalStatus,
      'disability': instance.disability,
      'qualification': instance.qualification,
    };

_$RegisterKycResponseModelImpl _$$RegisterKycResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterKycResponseModelImpl(
      regRef: json['regRef'] as String,
      regStatus: (json['regStatus'] as num).toInt(),
      status: json['status'] as String,
      message: json['message'] as String,
      remark: json['remark'] as String,
      userType: (json['userType'] as num).toInt(),
    );

Map<String, dynamic> _$$RegisterKycResponseModelImplToJson(
        _$RegisterKycResponseModelImpl instance) =>
    <String, dynamic>{
      'regRef': instance.regRef,
      'regStatus': instance.regStatus,
      'status': instance.status,
      'message': instance.message,
      'remark': instance.remark,
      'userType': instance.userType,
    };
