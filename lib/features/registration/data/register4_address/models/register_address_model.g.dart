// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterAddressDataImpl _$$RegisterAddressDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterAddressDataImpl(
      regInfo: RegInfo.fromJson(json['regInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterAddressDataImplToJson(
        _$RegisterAddressDataImpl instance) =>
    <String, dynamic>{
      'regInfo': instance.regInfo,
    };

_$RegInfoImpl _$$RegInfoImplFromJson(Map<String, dynamic> json) =>
    _$RegInfoImpl(
      userType: (json['userType'] as num).toInt(),
      userRef: json['userRef'] as String,
      regStatus: (json['regStatus'] as num).toInt(),
    );

Map<String, dynamic> _$$RegInfoImplToJson(_$RegInfoImpl instance) =>
    <String, dynamic>{
      'userType': instance.userType,
      'userRef': instance.userRef,
      'regStatus': instance.regStatus,
    };
