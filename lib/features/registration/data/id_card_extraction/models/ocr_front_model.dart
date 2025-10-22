import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/id_card_extraction/entities/ocr_front_entity.dart';

part 'ocr_front_model.freezed.dart';
part 'ocr_front_model.g.dart';

@freezed
@JsonSerializable()
class OcrFrontModel with _$OcrFrontModel {
  const OcrFrontModel._();

  const factory OcrFrontModel({
    required String fullName,
    required String dateOfBirth,
    required String sex,
    required String nationality,
    required String dateOfExpiry,
    required String dateOfIssue,
    required String fcn,
    required String countryOfCitizenship,
    required String croppedFace,
  }) = _OcrFrontModel;

  factory OcrFrontModel.fromJson(Map<String, dynamic> json) {
    final front = json["id_analysis"]["front"];
    return OcrFrontModel(
      fullName: front["Full_name"] ?? "",
      dateOfBirth: front["Date_of_birth"] ?? "",
      sex: front["Sex"] ?? "",
      nationality: front["Nationality"] ?? "",
      dateOfExpiry: front["Expiry_date"] ?? "",
      dateOfIssue: front["Date_of_Issue"] ?? "",
      fcn: front["FCN"] ?? front["FAN"] ?? front["FIN"] ?? "",
      countryOfCitizenship: front["Country_of_Citizenship"] ?? "",
      croppedFace: json["cropped_face"] ?? "",
    );
  }

  factory OcrFrontModel.fromMap(Map<String, dynamic> json) =>
      _$OcrFrontModelFromJson(json);

  factory OcrFrontModel.fromEntity(OcrFrontEntity entity) {
    return OcrFrontModel(
      fullName: entity.fullName,
      dateOfBirth: entity.dateOfBirth,
      sex: entity.sex,
      nationality: entity.nationality,
      dateOfExpiry: entity.dateOfExpiry,
      dateOfIssue: entity.dateOfIssue,
      fcn: entity.fcn,
      countryOfCitizenship: entity.countryOfCitizenship,
      croppedFace: entity.croppedFace,
    );
  }

  OcrFrontEntity toEntity() {
    return OcrFrontEntity(
      fullName: fullName,
      dateOfBirth: dateOfBirth,
      sex: sex,
      nationality: nationality,
      dateOfExpiry: dateOfExpiry,
      dateOfIssue: dateOfIssue,
      fcn: fcn,
      countryOfCitizenship: countryOfCitizenship,
      croppedFace: croppedFace,
    );
  }
}
