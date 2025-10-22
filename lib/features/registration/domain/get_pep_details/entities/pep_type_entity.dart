import 'package:freezed_annotation/freezed_annotation.dart';

part 'pep_type_entity.freezed.dart';

@freezed
class PepTypeEntity with _$PepTypeEntity {
  const factory PepTypeEntity({
    @JsonKey(name: 'pep_type_id') required int pepTypeId,
    @JsonKey(name: 'pep_type_name') required String pepTypeName,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'required_fields')
    required List<RequiredFieldEntity> requiredFields,
  }) = _PepTypeEntity;
}

@freezed
class RequiredFieldEntity with _$RequiredFieldEntity {
  const factory RequiredFieldEntity({
    @JsonKey(name: 'field_name') required String fieldName,
    @JsonKey(name: 'field_type') required String fieldType,
  }) = _RequiredFieldEntity;
}
