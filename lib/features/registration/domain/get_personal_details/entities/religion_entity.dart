import 'package:freezed_annotation/freezed_annotation.dart';

part 'religion_entity.freezed.dart';

@freezed
class ReligionEntity with _$ReligionEntity {
  const factory ReligionEntity({
    required int id,
    @JsonKey(name: 'religion_name') required String religionName,
  }) = _ReligionEntity;
}
