// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pep_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PepModelImpl _$$PepModelImplFromJson(Map<String, dynamic> json) =>
    _$PepModelImpl(
      id: (json['id'] as num).toInt(),
      pepOptionName: json['pep_option_name'] as String,
      description: json['description'] as String,
      pepType: json['pep_type'] as String,
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: json['created_time'] as String,
      authTime: json['auth_time'] as String,
      createdUserId: (json['created_userid'] as num).toInt(),
      authUserId: (json['auth_userid'] as num).toInt(),
      deauthNarration: json['deauth_narration'] as String,
    );

Map<String, dynamic> _$$PepModelImplToJson(_$PepModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pep_option_name': instance.pepOptionName,
      'description': instance.description,
      'pep_type': instance.pepType,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime,
      'auth_time': instance.authTime,
      'created_userid': instance.createdUserId,
      'auth_userid': instance.authUserId,
      'deauth_narration': instance.deauthNarration,
    };
