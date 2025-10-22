// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'religion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReligionModelImpl _$$ReligionModelImplFromJson(Map<String, dynamic> json) =>
    _$ReligionModelImpl(
      id: (json['id'] as num).toInt(),
      religionName: json['religion_name'] as String,
    );

Map<String, dynamic> _$$ReligionModelImplToJson(_$ReligionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'religion_name': instance.religionName,
    };
