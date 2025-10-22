// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileOtpModelImpl _$$MobileOtpModelImplFromJson(Map<String, dynamic> json) =>
    _$MobileOtpModelImpl(
      otp: json['otp'] as String? ?? '',
      message: json['message'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$MobileOtpModelImplToJson(
        _$MobileOtpModelImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'message': instance.message,
      'status': instance.status,
    };
