// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QualificationModelImpl _$$QualificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QualificationModelImpl(
      id: (json['id'] as num).toInt(),
      qualificationName: json['qualification_name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$QualificationModelImplToJson(
        _$QualificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qualification_name': instance.qualificationName,
      'description': instance.description,
    };
