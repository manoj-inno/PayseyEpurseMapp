// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nationality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NationalityModelImpl _$$NationalityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NationalityModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['nationality_name'] as String,
      description: json['description'] as String,
      authStatus: json['auth_status'] as String,
    );

Map<String, dynamic> _$$NationalityModelImplToJson(
        _$NationalityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nationality_name': instance.name,
      'description': instance.description,
      'auth_status': instance.authStatus,
    };
