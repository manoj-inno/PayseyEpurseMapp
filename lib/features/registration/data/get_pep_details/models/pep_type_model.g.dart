// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pep_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PepTypeModelImpl _$$PepTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$PepTypeModelImpl(
      pepTypeId: (json['pep_type_id'] as num).toInt(),
      pepTypeName: json['type_name'] as String,
      status: json['status'] as bool,
      requiredFields: (json['required_fields'] as List<dynamic>?)
          ?.map((e) => RequiredFieldModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PepTypeModelImplToJson(_$PepTypeModelImpl instance) =>
    <String, dynamic>{
      'pep_type_id': instance.pepTypeId,
      'type_name': instance.pepTypeName,
      'status': instance.status,
      'required_fields': instance.requiredFields,
    };

_$RequiredFieldModelImpl _$$RequiredFieldModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequiredFieldModelImpl(
      fieldName: json['field_name'] as String,
      fieldType: json['field_type'] as String,
    );

Map<String, dynamic> _$$RequiredFieldModelImplToJson(
        _$RequiredFieldModelImpl instance) =>
    <String, dynamic>{
      'field_name': instance.fieldName,
      'field_type': instance.fieldType,
    };
