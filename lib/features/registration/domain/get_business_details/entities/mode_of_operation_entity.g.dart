// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mode_of_operation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModeOfOperationEntityImpl _$$ModeOfOperationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ModeOfOperationEntityImpl(
      modeId: (json['modeId'] as num).toInt(),
      modeDesc: json['modeDesc'] as String,
      numOfUsersRequired: (json['numOfUsersRequired'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      processStatus: (json['processStatus'] as num).toInt(),
      isStakeHolderRequired: json['isStakeHolderRequired'] as bool,
      authStatus: json['authStatus'] as String,
      createdTime: DateTime.parse(json['createdTime'] as String),
      authTime: DateTime.parse(json['authTime'] as String),
      createdUserId: (json['createdUserId'] as num).toInt(),
      authUserId: (json['authUserId'] as num).toInt(),
      deauthNarration: json['deauthNarration'] as String,
    );

Map<String, dynamic> _$$ModeOfOperationEntityImplToJson(
        _$ModeOfOperationEntityImpl instance) =>
    <String, dynamic>{
      'modeId': instance.modeId,
      'modeDesc': instance.modeDesc,
      'numOfUsersRequired': instance.numOfUsersRequired,
      'status': instance.status,
      'processStatus': instance.processStatus,
      'isStakeHolderRequired': instance.isStakeHolderRequired,
      'authStatus': instance.authStatus,
      'createdTime': instance.createdTime.toIso8601String(),
      'authTime': instance.authTime.toIso8601String(),
      'createdUserId': instance.createdUserId,
      'authUserId': instance.authUserId,
      'deauthNarration': instance.deauthNarration,
    };
