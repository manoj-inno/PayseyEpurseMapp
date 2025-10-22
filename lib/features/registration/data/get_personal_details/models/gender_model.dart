import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_personal_details/entities/gender_entity.dart';

part 'gender_model.freezed.dart';
part 'gender_model.g.dart';

@freezed
class GenderModel with _$GenderModel {
  const factory GenderModel({
    required int id,
    @JsonKey(name: 'gender_name') required String genderName,
  }) = _GenderModel;

  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);
}

extension GenderModelExtension on GenderModel {
  GenderEntity toEntity() => GenderEntity(
        id: id,
        genderName: genderName,
      );
}
