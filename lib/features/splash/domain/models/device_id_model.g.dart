// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceIdModelImpl _$$DeviceIdModelImplFromJson(Map<String, dynamic> json) =>
    _$DeviceIdModelImpl(
      deviceId: json['device_id'] as String,
      deviceModel: json['device_model'] as String,
      deviceManufacturer: json['device_manufacturer'] as String,
      deviceOS: json['device_os'] as String,
    );

Map<String, dynamic> _$$DeviceIdModelImplToJson(_$DeviceIdModelImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_model': instance.deviceModel,
      'device_manufacturer': instance.deviceManufacturer,
      'device_os': instance.deviceOS,
    };
