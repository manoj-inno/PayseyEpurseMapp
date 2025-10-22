// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_back_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OcrBackModel _$OcrBackModelFromJson(Map<String, dynamic> json) => OcrBackModel(
      dateOfIssue: json['dateOfIssue'] as String,
      dateOfExpiry: json['dateOfExpiry'] as String?,
      phoneNumber: json['phoneNumber'] as String,
      region: json['region'] as String,
      zone: json['zone'] as String,
      woreda: json['woreda'] as String,
      nationality: json['nationality'] as String,
      fin: json['fin'] as String,
    );

Map<String, dynamic> _$OcrBackModelToJson(OcrBackModel instance) =>
    <String, dynamic>{
      'dateOfIssue': instance.dateOfIssue,
      'dateOfExpiry': instance.dateOfExpiry,
      'phoneNumber': instance.phoneNumber,
      'region': instance.region,
      'zone': instance.zone,
      'woreda': instance.woreda,
      'nationality': instance.nationality,
      'fin': instance.fin,
    };
