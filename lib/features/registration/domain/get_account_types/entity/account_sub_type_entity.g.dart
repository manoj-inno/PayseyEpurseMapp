// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_sub_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountSubTypeEntityImpl _$$AccountSubTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountSubTypeEntityImpl(
      id: (json['id'] as num).toInt(),
      accountTypeId: (json['accountTypeId'] as num).toInt(),
      customerTypeId: (json['customerTypeId'] as num).toInt(),
      subtypeName: json['subtypeName'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$AccountSubTypeEntityImplToJson(
        _$AccountSubTypeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountTypeId': instance.accountTypeId,
      'customerTypeId': instance.customerTypeId,
      'subtypeName': instance.subtypeName,
      'description': instance.description,
      'status': instance.status,
    };
