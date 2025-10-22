import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/id_card_extraction/entities/ocr_back_entity.dart';

part 'ocr_back_model.freezed.dart';
part 'ocr_back_model.g.dart';

@freezed
@JsonSerializable()
class OcrBackModel with _$OcrBackModel {
  const OcrBackModel._();

  const factory OcrBackModel({
    required String dateOfIssue,
    String? dateOfExpiry,
    required String phoneNumber,
    required String region,
    required String zone,
    required String woreda,
    required String nationality,
    required String fin,
  }) = _OcrBackModel;

  factory OcrBackModel.fromJson(Map<String, dynamic> json) {
    final front = json["id_analysis"]["back"] ?? {};
    return OcrBackModel(
      dateOfIssue: front["Date_of_Issue"] ?? "",
      dateOfExpiry: (front["Date_of_Expiry"]?.isEmpty ?? true)
          ? null
          : front["Date_of_Expiry"],
      phoneNumber: front["Phone_Number"] ?? "",
      region: front["Region"] ?? "",
      zone: front["Zone"] ?? "",
      woreda: front["Woreda"] ?? "",
      nationality: front["Nationality"] ?? "",
      fin: front["FIN"] ?? "",
    );
  }

  factory OcrBackModel.fromMap(Map<String, dynamic> json) =>
      _$OcrBackModelFromJson(json);

  factory OcrBackModel.fromEntity(OcrBackEntity entity) {
    return OcrBackModel(
      dateOfIssue: entity.dateOfIssue,
      dateOfExpiry: entity.dateOfExpiry,
      phoneNumber: entity.phoneNumber,
      region: entity.region,
      zone: entity.zone,
      woreda: entity.woreda,
      nationality: entity.nationality,
      fin: entity.fin,
    );
  }

  OcrBackEntity toEntity() {
    return OcrBackEntity(
      dateOfIssue: dateOfIssue,
      dateOfExpiry: dateOfExpiry,
      phoneNumber: phoneNumber,
      region: region,
      zone: zone,
      woreda: woreda,
      nationality: nationality,
      fin: fin,
    );
  }
}
