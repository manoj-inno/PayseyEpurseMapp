import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_matching_entity.freezed.dart';

@freezed
class FaceMatchEntity with _$FaceMatchEntity {
  const factory FaceMatchEntity({
    required int score,
    required bool success,
    required String verificationStatus,
  }) = _FaceMatchEntity;
}
