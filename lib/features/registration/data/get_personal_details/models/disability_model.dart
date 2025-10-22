import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_personal_details/entities/disability_entity.dart';

part 'disability_model.freezed.dart';
part 'disability_model.g.dart';

@freezed
class DisabilityModel with _$DisabilityModel {
  const factory DisabilityModel({
    required int id,
    @JsonKey(name: 'disability_name') required String disabilityName,
    required String description,
  }) = _DisabilityModel;

  factory DisabilityModel.fromJson(Map<String, dynamic> json) =>
      _$DisabilityModelFromJson(json);
}

extension DisabilityModelExtension on DisabilityModel {
  DisabilityEntity toEntity() => DisabilityEntity(
        id: id,
        disabilityName: disabilityName,
        description: description,
      );
}
