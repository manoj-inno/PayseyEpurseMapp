// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisabilityModelImpl _$$DisabilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DisabilityModelImpl(
      id: (json['id'] as num).toInt(),
      disabilityName: json['disability_name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DisabilityModelImplToJson(
        _$DisabilityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disability_name': instance.disabilityName,
      'description': instance.description,
    };
