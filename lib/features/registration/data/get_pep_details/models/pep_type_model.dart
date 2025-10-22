import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_pep_details/entities/pep_type_entity.dart';

part 'pep_type_model.freezed.dart';
part 'pep_type_model.g.dart';

@freezed
class PepTypeModel with _$PepTypeModel {
  const factory PepTypeModel({
    @JsonKey(name: 'pep_type_id') required int pepTypeId,
    @JsonKey(name: 'type_name') required String pepTypeName,
    @JsonKey(name: 'status') required bool status,
    @JsonKey(name: 'required_fields')
    List<RequiredFieldModel>? requiredFields,
  }) = _PepTypeModel;

  factory PepTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PepTypeModelFromJson(json);
}

extension PepTypeModelExtension on PepTypeModel {
  PepTypeEntity toEntity() => PepTypeEntity(
        pepTypeId: pepTypeId,
        pepTypeName: pepTypeName,
        status: status ? 1 : 0, // Convert bool to int
        requiredFields: requiredFields?.map((e) => e.toEntity()).toList() ?? [],
      );
}

@freezed
class RequiredFieldModel with _$RequiredFieldModel {
  const factory RequiredFieldModel({
    @JsonKey(name: 'field_name') required String fieldName,
    @JsonKey(name: 'field_type') required String fieldType,
  }) = _RequiredFieldModel;

  factory RequiredFieldModel.fromJson(Map<String, dynamic> json) =>
      _$RequiredFieldModelFromJson(json);
}

extension RequiredFieldModelExtension on RequiredFieldModel {
  RequiredFieldEntity toEntity() => RequiredFieldEntity(
        fieldName: fieldName,
        fieldType: fieldType,
      );
}
