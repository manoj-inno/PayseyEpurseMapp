// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_range_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalaryRangeModelImpl _$$SalaryRangeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SalaryRangeModelImpl(
      id: (json['id'] as num).toInt(),
      minSalary: (json['min_salary'] as num).toInt(),
      maxSalary: (json['max_salary'] as num).toInt(),
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      processStatus: (json['process_status'] as num).toInt(),
      authStatus: json['auth_status'] as String,
    );

Map<String, dynamic> _$$SalaryRangeModelImplToJson(
        _$SalaryRangeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'description': instance.description,
      'status': instance.status,
      'process_status': instance.processStatus,
      'auth_status': instance.authStatus,
    };
