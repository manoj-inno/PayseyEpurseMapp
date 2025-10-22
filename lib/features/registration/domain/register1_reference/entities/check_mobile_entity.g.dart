// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_mobile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileCheckEntityImpl _$$MobileCheckEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileCheckEntityImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      regRef: json['regRef'] as String,
      regStatus: (json['regStatus'] as num).toInt(),
      userType: (json['userType'] as num).toInt(),
      remark: json['remark'] as String,
    );

Map<String, dynamic> _$$MobileCheckEntityImplToJson(
        _$MobileCheckEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'regRef': instance.regRef,
      'regStatus': instance.regStatus,
      'userType': instance.userType,
      'remark': instance.remark,
    };
