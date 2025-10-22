import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_personal_details/entities/religion_entity.dart';

part 'religion_model.freezed.dart';
part 'religion_model.g.dart';

@freezed
class ReligionModel with _$ReligionModel {
  const factory ReligionModel({
    required int id,
    @JsonKey(name: 'religion_name') required String religionName,
  }) = _ReligionModel;
  factory ReligionModel.fromJson(Map<String, dynamic> json) =>
      _$ReligionModelFromJson(json);
}

extension ReligionModelExtension on ReligionModel {
  ReligionEntity toEntity() => ReligionEntity(
        id: id,
        religionName: religionName,
      );
}
