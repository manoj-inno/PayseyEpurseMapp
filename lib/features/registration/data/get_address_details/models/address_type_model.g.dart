// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressTypeModelImpl _$$AddressTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressTypeModelImpl(
      addressTypeId: (json['address_type_id'] as num).toInt(),
      addressTypeDesc: json['address_type_desc'] as String,
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: json['created_time'] as String,
      authTime: json['auth_time'] as String,
      custType: (json['cust_type'] as num).toInt(),
      mandatory: json['mandatory'] as bool,
    );

Map<String, dynamic> _$$AddressTypeModelImplToJson(
        _$AddressTypeModelImpl instance) =>
    <String, dynamic>{
      'address_type_id': instance.addressTypeId,
      'address_type_desc': instance.addressTypeDesc,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime,
      'auth_time': instance.authTime,
      'cust_type': instance.custType,
      'mandatory': instance.mandatory,
    };
