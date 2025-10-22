// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_kyc_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterKycEntityImpl _$$RegisterKycEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterKycEntityImpl(
      regRef: json['regRef'] as String,
      regStatus: (json['regStatus'] as num).toInt(),
      status: json['status'] as String,
      message: json['message'] as String,
      remark: json['remark'] as String,
      userType: (json['userType'] as num).toInt(),
    );

Map<String, dynamic> _$$RegisterKycEntityImplToJson(
        _$RegisterKycEntityImpl instance) =>
    <String, dynamic>{
      'regRef': instance.regRef,
      'regStatus': instance.regStatus,
      'status': instance.status,
      'message': instance.message,
      'remark': instance.remark,
      'userType': instance.userType,
    };
