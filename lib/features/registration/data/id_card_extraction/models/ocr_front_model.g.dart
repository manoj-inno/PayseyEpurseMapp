// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_front_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OcrFrontModel _$OcrFrontModelFromJson(Map<String, dynamic> json) =>
    OcrFrontModel(
      fullName: json['fullName'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      sex: json['sex'] as String,
      nationality: json['nationality'] as String,
      dateOfExpiry: json['dateOfExpiry'] as String,
      dateOfIssue: json['dateOfIssue'] as String,
      fcn: json['fcn'] as String,
      countryOfCitizenship: json['countryOfCitizenship'] as String,
      croppedFace: json['croppedFace'] as String,
    );

Map<String, dynamic> _$OcrFrontModelToJson(OcrFrontModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth,
      'sex': instance.sex,
      'nationality': instance.nationality,
      'dateOfExpiry': instance.dateOfExpiry,
      'dateOfIssue': instance.dateOfIssue,
      'fcn': instance.fcn,
      'countryOfCitizenship': instance.countryOfCitizenship,
      'croppedFace': instance.croppedFace,
    };
