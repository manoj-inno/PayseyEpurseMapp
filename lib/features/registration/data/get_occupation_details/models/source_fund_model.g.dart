// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_fund_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceFundModelImpl _$$SourceFundModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SourceFundModelImpl(
      id: (json['id'] as num).toInt(),
      sourceName: json['source_name'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      authTime: DateTime.parse(json['auth_time'] as String),
      createdUserid: (json['created_userid'] as num).toInt(),
      authUserid: (json['auth_userid'] as num).toInt(),
      deauthNarration: json['deauth_narration'] as String,
    );

Map<String, dynamic> _$$SourceFundModelImplToJson(
        _$SourceFundModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_name': instance.sourceName,
      'description': instance.description,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime.toIso8601String(),
      'auth_time': instance.authTime.toIso8601String(),
      'created_userid': instance.createdUserid,
      'auth_userid': instance.authUserid,
      'deauth_narration': instance.deauthNarration,
    };
