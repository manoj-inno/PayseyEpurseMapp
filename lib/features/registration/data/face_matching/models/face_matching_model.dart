import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_matching_model.freezed.dart';
part 'face_matching_model.g.dart';

@freezed
class FaceMatchResponseModel with _$FaceMatchResponseModel {
  const factory FaceMatchResponseModel({
    required int score,
    required bool success,
    @JsonKey(name: 'verification_status') required String verificationStatus,
  }) = _FaceMatchResponseModel;

  factory FaceMatchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FaceMatchResponseModelFromJson(json);
}
