// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenderModelImpl _$$GenderModelImplFromJson(Map<String, dynamic> json) =>
    _$GenderModelImpl(
      id: (json['id'] as num).toInt(),
      genderName: json['gender_name'] as String,
    );

Map<String, dynamic> _$$GenderModelImplToJson(_$GenderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender_name': instance.genderName,
    };
