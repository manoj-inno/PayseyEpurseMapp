// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occupation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OccupationModelImpl _$$OccupationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OccupationModelImpl(
      id: (json['id'] as num).toInt(),
      occupationName: json['occupation_name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$OccupationModelImplToJson(
        _$OccupationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'occupation_name': instance.occupationName,
      'description': instance.description,
    };
