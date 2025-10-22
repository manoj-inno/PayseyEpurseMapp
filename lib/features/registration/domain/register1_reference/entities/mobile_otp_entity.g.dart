// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileOtpEntityImpl _$$MobileOtpEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileOtpEntityImpl(
      otp: json['otp'] as String,
      message: json['message'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$MobileOtpEntityImplToJson(
        _$MobileOtpEntityImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'message': instance.message,
      'status': instance.status,
    };
