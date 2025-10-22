import 'package:freezed_annotation/freezed_annotation.dart';

part 'turnover_entity.freezed.dart';
part 'turnover_entity.g.dart';

@freezed
class TurnoverEntity with _$TurnoverEntity {
  const factory TurnoverEntity({
    required int id,
    required String configName,
    required int minValue,
    required int maxValue,
  }) = _TurnoverEntity;

  factory TurnoverEntity.fromJson(Map<String, dynamic> json) =>
      _$TurnoverEntityFromJson(json);
}
