import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_occupation_details/entity/occupation_entity.dart';

part 'occupation_model.freezed.dart';
part 'occupation_model.g.dart';

@freezed
class OccupationModel with _$OccupationModel {
  const factory OccupationModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'occupation_name') required String occupationName,
    @JsonKey(name: 'description') required String description,
  }) = _OccupationModel;

  factory OccupationModel.fromJson(Map<String, dynamic> json) =>
      _$OccupationModelFromJson(json);
}

extension OccupationModelExtension on OccupationModel {
  OccupationEntity toEntity() => OccupationEntity(
        id: id,
        occupationName: occupationName,
        description: description,
      );
}
