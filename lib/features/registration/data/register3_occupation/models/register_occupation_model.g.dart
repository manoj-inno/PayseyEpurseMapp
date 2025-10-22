// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_occupation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterOccupationModelImpl _$$RegisterOccupationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterOccupationModelImpl(
      refNumber: json['user_ref'] as String,
      sourceOfFund: (json['source_of_income'] as num).toInt(),
      occupation: (json['occupation'] as num).toInt(),
      employer: json['employer_name'] as String?,
      employmentStatus: json['employment_status'] as String?,
      employeeId: json['employee_id'] as String?,
      placeOfPosting: json['place_of_position'] as String?,
      salaryRange: (json['annual_income'] as num?)?.toInt(),
      netWorth: (json['net_worth'] as num?)?.toInt(),
      officeAddress: json['office_full_address'] as String?,
      officePhoneNumber: json['office_phone_number'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$$RegisterOccupationModelImplToJson(
        _$RegisterOccupationModelImpl instance) =>
    <String, dynamic>{
      'user_ref': instance.refNumber,
      'source_of_income': instance.sourceOfFund,
      'occupation': instance.occupation,
      'employer_name': instance.employer,
      'employment_status': instance.employmentStatus,
      'employee_id': instance.employeeId,
      'place_of_position': instance.placeOfPosting,
      'annual_income': instance.salaryRange,
      'net_worth': instance.netWorth,
      'office_full_address': instance.officeAddress,
      'office_phone_number': instance.officePhoneNumber,
      'designation': instance.designation,
    };
