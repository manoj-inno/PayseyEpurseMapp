import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_personal_details/entities/qualification_entity.dart';

part 'qualification_model.freezed.dart';
part 'qualification_model.g.dart';

@freezed
class QualificationModel with _$QualificationModel {
  const factory QualificationModel({
    required int id,
    @JsonKey(name: 'qualification_name') required String qualificationName,
    required String description,
  }) = _QualificationModel;

  factory QualificationModel.fromJson(Map<String, dynamic> json) =>
      _$QualificationModelFromJson(json);
}

extension QualificationModelExtension on QualificationModel {
  QualificationEntity toEntity() => QualificationEntity(
        id: id,
        qualificationName: qualificationName,
        description: description,
      );
}
