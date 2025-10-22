import 'package:freezed_annotation/freezed_annotation.dart';

part 'occupation_entity.freezed.dart';

@freezed
class OccupationEntity with _$OccupationEntity {
  const factory OccupationEntity({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'occupation_name') required String occupationName,
    @JsonKey(name: 'description') required String description,
  }) = _OccupationEntity;
}
