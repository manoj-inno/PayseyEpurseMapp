// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelationshipModelImpl _$$RelationshipModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RelationshipModelImpl(
      id: (json['id'] as num).toInt(),
      relationshipName: json['relationship_name'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      authTime: DateTime.parse(json['auth_time'] as String),
      createdUserId: (json['created_userid'] as num).toInt(),
      authUserId: (json['auth_userid'] as num).toInt(),
      deauthNarration: json['deauth_narration'] as String,
    );

Map<String, dynamic> _$$RelationshipModelImplToJson(
        _$RelationshipModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relationship_name': instance.relationshipName,
      'description': instance.description,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime.toIso8601String(),
      'auth_time': instance.authTime.toIso8601String(),
      'created_userid': instance.createdUserId,
      'auth_userid': instance.authUserId,
      'deauth_narration': instance.deauthNarration,
    };
