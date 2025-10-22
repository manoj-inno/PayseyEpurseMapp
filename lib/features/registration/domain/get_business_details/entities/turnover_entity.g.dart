// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turnover_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TurnoverEntityImpl _$$TurnoverEntityImplFromJson(Map<String, dynamic> json) =>
    _$TurnoverEntityImpl(
      id: (json['id'] as num).toInt(),
      configName: json['configName'] as String,
      minValue: (json['minValue'] as num).toInt(),
      maxValue: (json['maxValue'] as num).toInt(),
    );

Map<String, dynamic> _$$TurnoverEntityImplToJson(
        _$TurnoverEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'configName': instance.configName,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
    };
