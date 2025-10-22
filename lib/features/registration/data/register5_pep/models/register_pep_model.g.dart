// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_pep_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterPepRequestModelImpl _$$RegisterPepRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterPepRequestModelImpl(
      userRef: json['user_ref'] as String,
      pepType: (json['pep_id'] as num).toInt(),
      dynamicFields: json['dynamicFields'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$RegisterPepRequestModelImplToJson(
        _$RegisterPepRequestModelImpl instance) =>
    <String, dynamic>{
      'user_ref': instance.userRef,
      'pep_id': instance.pepType,
      'dynamicFields': instance.dynamicFields,
    };
