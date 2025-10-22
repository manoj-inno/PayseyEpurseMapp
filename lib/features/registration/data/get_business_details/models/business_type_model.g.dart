// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessTypeModelImpl _$$BusinessTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessTypeModelImpl(
      id: (json['id'] as num).toInt(),
      businessName: json['business_name'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      authTime: DateTime.parse(json['auth_time'] as String),
    );

Map<String, dynamic> _$$BusinessTypeModelImplToJson(
        _$BusinessTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_name': instance.businessName,
      'description': instance.description,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime.toIso8601String(),
      'auth_time': instance.authTime.toIso8601String(),
    };
