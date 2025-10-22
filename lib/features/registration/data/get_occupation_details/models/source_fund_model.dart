import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_occupation_details/entity/source_fund_entity.dart';

part 'source_fund_model.freezed.dart';
part 'source_fund_model.g.dart';

@freezed
class SourceFundModel with _$SourceFundModel {
  const factory SourceFundModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'source_name') required String sourceName,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required DateTime createdTime,
    @JsonKey(name: 'auth_time') required DateTime authTime,
    @JsonKey(name: 'created_userid') required int createdUserid,
    @JsonKey(name: 'auth_userid') required int authUserid,
    @JsonKey(name: 'deauth_narration') required String deauthNarration,
  }) = _SourceFundModel;

  factory SourceFundModel.fromJson(Map<String, dynamic> json) =>
      _$SourceFundModelFromJson(json);
}

extension SourceFundModelExtension on SourceFundModel {
  SourceFundEntity toEntity() => SourceFundEntity(
        id: id,
        sourceName: sourceName,
        description: description,
      );
}
