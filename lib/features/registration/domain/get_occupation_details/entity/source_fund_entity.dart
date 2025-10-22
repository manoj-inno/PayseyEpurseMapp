import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_fund_entity.freezed.dart';

@freezed
class SourceFundEntity with _$SourceFundEntity {
  const factory SourceFundEntity({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'source_name') required String sourceName,
    @JsonKey(name: 'description') required String description,
  }) = _SourceFundEntity;
}
