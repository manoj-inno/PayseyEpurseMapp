// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_reference_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateReferenceImpl _$$GenerateReferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateReferenceImpl(
      regRef: json['regRef'] as String,
      status: json['status'] as String,
      customerTypeId: (json['customerTypeId'] as num).toInt(),
    );

Map<String, dynamic> _$$GenerateReferenceImplToJson(
        _$GenerateReferenceImpl instance) =>
    <String, dynamic>{
      'regRef': instance.regRef,
      'status': instance.status,
      'customerTypeId': instance.customerTypeId,
    };
