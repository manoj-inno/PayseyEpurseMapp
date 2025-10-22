// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mode_of_operation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModeOfOperationModelImpl _$$ModeOfOperationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ModeOfOperationModelImpl(
      modeId: (json['mode_id'] as num).toInt(),
      modeDesc: json['mode_desc'] as String,
      numOfUsersRequired: (json['num_of_users_required'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      authTime: DateTime.parse(json['auth_time'] as String),
      createdUserId: (json['created_userid'] as num).toInt(),
      authUserId: (json['auth_userid'] as num).toInt(),
      deauthNarration: json['deauth_narration'] as String,
      isStakeHolderRequired: json['stackholder_required'] as bool,
    );

Map<String, dynamic> _$$ModeOfOperationModelImplToJson(
        _$ModeOfOperationModelImpl instance) =>
    <String, dynamic>{
      'mode_id': instance.modeId,
      'mode_desc': instance.modeDesc,
      'num_of_users_required': instance.numOfUsersRequired,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime.toIso8601String(),
      'auth_time': instance.authTime.toIso8601String(),
      'created_userid': instance.createdUserId,
      'auth_userid': instance.authUserId,
      'deauth_narration': instance.deauthNarration,
      'stackholder_required': instance.isStakeHolderRequired,
    };
