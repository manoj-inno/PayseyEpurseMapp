// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessTypeEntityImpl _$$BusinessTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessTypeEntityImpl(
      id: (json['id'] as num).toInt(),
      businessName: json['businessName'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      processStatus: (json['processStatus'] as num).toInt(),
      authStatus: json['authStatus'] as String,
      createdTime: DateTime.parse(json['createdTime'] as String),
      authTime: DateTime.parse(json['authTime'] as String),
    );

Map<String, dynamic> _$$BusinessTypeEntityImplToJson(
        _$BusinessTypeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'businessName': instance.businessName,
      'description': instance.description,
      'status': instance.status,
      'processStatus': instance.processStatus,
      'authStatus': instance.authStatus,
      'createdTime': instance.createdTime.toIso8601String(),
      'authTime': instance.authTime.toIso8601String(),
    };
