// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_sub_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountSubTypeModelImpl _$$AccountSubTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountSubTypeModelImpl(
      id: (json['id'] as num).toInt(),
      accountTypeId: (json['account_type_id'] as num).toInt(),
      customerTypeId: (json['customer_type_id'] as num).toInt(),
      subtypeName: json['subtype_name'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
      createdTime: json['created_time'] as String,
      authTime: json['auth_time'] as String,
    );

Map<String, dynamic> _$$AccountSubTypeModelImplToJson(
        _$AccountSubTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_type_id': instance.accountTypeId,
      'customer_type_id': instance.customerTypeId,
      'subtype_name': instance.subtypeName,
      'description': instance.description,
      'status': instance.status,
      'auth_status': instance.authStatus,
      'created_time': instance.createdTime,
      'auth_time': instance.authTime,
    };
