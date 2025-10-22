import 'package:freezed_annotation/freezed_annotation.dart';

part 'pep_entity.freezed.dart';

@freezed
class PepEntity with _$PepEntity {
  const factory PepEntity({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'pep_option_name') required String pepOptionName,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'pep_type') required String pepType,
  }) = _PepEntity;
}
