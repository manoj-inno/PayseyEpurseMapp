// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_proof_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressProofModelImpl _$$AddressProofModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressProofModelImpl(
      id: (json['addr_doc_id'] as num).toInt(),
      docType: json['doc_type'] as String,
      entityType: (json['entity_type'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      authTime: DateTime.parse(json['auth_time'] as String),
      createdUserId: (json['created_userid'] as num).toInt(),
      authUserId: (json['auth_userid'] as num).toInt(),
      deauthNarration: json['deauth_narration'] as String,
      isMaster: json['is_master'] as bool,
    );

Map<String, dynamic> _$$AddressProofModelImplToJson(
        _$AddressProofModelImpl instance) =>
    <String, dynamic>{
      'addr_doc_id': instance.id,
      'doc_type': instance.docType,
      'entity_type': instance.entityType,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime.toIso8601String(),
      'auth_time': instance.authTime.toIso8601String(),
      'created_userid': instance.createdUserId,
      'auth_userid': instance.authUserId,
      'deauth_narration': instance.deauthNarration,
      'is_master': instance.isMaster,
    };
