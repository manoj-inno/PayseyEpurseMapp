import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocr_back_entity.freezed.dart';

@freezed
class OcrBackEntity with _$OcrBackEntity {
  const factory OcrBackEntity({
    required String dateOfIssue,
    String? dateOfExpiry,
    required String phoneNumber,
    required String region,
    required String zone,
    required String woreda,
    required String nationality,
    required String fin,
  }) = _OcrBackEntity;
}
