// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileOtpVerificationEntityImpl _$$MobileOtpVerificationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileOtpVerificationEntityImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      status: json['status'] as String,
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$$MobileOtpVerificationEntityImplToJson(
        _$MobileOtpVerificationEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'mobile': instance.mobile,
    };
