import 'package:freezed_annotation/freezed_annotation.dart';

part 'disability_entity.freezed.dart';

@freezed
class DisabilityEntity with _$DisabilityEntity {
  const factory DisabilityEntity({
    required int id,
    required String disabilityName,
    required String description,
  }) = _DisabilityEntity;
}
