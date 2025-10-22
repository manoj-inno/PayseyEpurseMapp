// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerTypeEntityImpl _$$CustomerTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerTypeEntityImpl(
      id: (json['id'] as num).toInt(),
      typeName: json['typeName'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$CustomerTypeEntityImplToJson(
        _$CustomerTypeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeName': instance.typeName,
      'description': instance.description,
      'status': instance.status,
    };
