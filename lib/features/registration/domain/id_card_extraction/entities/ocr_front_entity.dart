import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocr_front_entity.freezed.dart';

@freezed
class OcrFrontEntity with _$OcrFrontEntity {
  const factory OcrFrontEntity({
    required String fullName,
    required String dateOfBirth,
    required String sex,
    required String nationality,
    required String dateOfExpiry,
    required String dateOfIssue,
    required String fcn,
    required String countryOfCitizenship,
    required String croppedFace,
  }) = _OcrFrontEntity;
}
