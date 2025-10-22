// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_matching_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaceMatchResponseModelImpl _$$FaceMatchResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FaceMatchResponseModelImpl(
      score: (json['score'] as num).toInt(),
      success: json['success'] as bool,
      verificationStatus: json['verification_status'] as String,
    );

Map<String, dynamic> _$$FaceMatchResponseModelImplToJson(
        _$FaceMatchResponseModelImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'success': instance.success,
      'verification_status': instance.verificationStatus,
    };
