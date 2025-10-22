// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turnover_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TurnoverModelImpl _$$TurnoverModelImplFromJson(Map<String, dynamic> json) =>
    _$TurnoverModelImpl(
      id: (json['id'] as num).toInt(),
      configName: json['config_name'] as String,
      minValue: (json['min_value'] as num).toInt(),
      maxValue: (json['max_value'] as num).toInt(),
    );

Map<String, dynamic> _$$TurnoverModelImplToJson(_$TurnoverModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'config_name': instance.configName,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
    };
