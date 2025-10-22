// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressTypeEntityImpl _$$AddressTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressTypeEntityImpl(
      addressTypeId: (json['addressTypeId'] as num).toInt(),
      addressTypeDesc: json['addressTypeDesc'] as String,
      custType: json['custType'] as String,
      mandatory: json['mandatory'] as bool,
    );

Map<String, dynamic> _$$AddressTypeEntityImplToJson(
        _$AddressTypeEntityImpl instance) =>
    <String, dynamic>{
      'addressTypeId': instance.addressTypeId,
      'addressTypeDesc': instance.addressTypeDesc,
      'custType': instance.custType,
      'mandatory': instance.mandatory,
    };
