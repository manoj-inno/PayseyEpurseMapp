import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_business_details/entities/turnover_entity.dart';

part 'turnover_model.freezed.dart';
part 'turnover_model.g.dart';

@freezed
class TurnoverModel with _$TurnoverModel {
  const factory TurnoverModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'config_name') required String configName,
    @JsonKey(name: 'min_value') required int minValue,
    @JsonKey(name: 'max_value') required int maxValue,
  }) = _TurnoverModel;

  factory TurnoverModel.fromJson(Map<String, dynamic> json) =>
      _$TurnoverModelFromJson(json);
}

extension TurnoverModelExtension on TurnoverModel {
  TurnoverEntity toEntity() => TurnoverEntity(
        id: id,
        configName: configName,
        minValue: minValue,
        maxValue: maxValue,
      );
}
