// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_proof_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressProofEntityImpl _$$AddressProofEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressProofEntityImpl(
      id: (json['id'] as num).toInt(),
      docType: json['docType'] as String,
      entityType: (json['entityType'] as num).toInt(),
      isMaster: json['isMaster'] as bool?,
    );

Map<String, dynamic> _$$AddressProofEntityImplToJson(
        _$AddressProofEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'docType': instance.docType,
      'entityType': instance.entityType,
      'isMaster': instance.isMaster,
    };
