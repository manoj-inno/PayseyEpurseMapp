// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_primary_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePrimaryDeviceModelImpl _$$UpdatePrimaryDeviceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePrimaryDeviceModelImpl(
      refNumber: json['refNumber'] as String? ?? '',
      deviceId: json['deviceId'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$UpdatePrimaryDeviceModelImplToJson(
        _$UpdatePrimaryDeviceModelImpl instance) =>
    <String, dynamic>{
      'refNumber': instance.refNumber,
      'deviceId': instance.deviceId,
      'message': instance.message,
    };
