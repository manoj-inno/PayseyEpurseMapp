// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountTypeEntityImpl _$$AccountTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountTypeEntityImpl(
      id: (json['id'] as num).toInt(),
      typeName: json['typeName'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$AccountTypeEntityImplToJson(
        _$AccountTypeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeName': instance.typeName,
      'description': instance.description,
      'status': instance.status,
    };
