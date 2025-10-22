import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_pep_details/entities/pep_entity.dart';

part 'pep_model.freezed.dart';
part 'pep_model.g.dart';

@freezed
class PepModel with _$PepModel {
  const factory PepModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'pep_option_name') required String pepOptionName,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'pep_type') required String pepType,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required String createdTime,
    @JsonKey(name: 'auth_time') required String authTime,
    @JsonKey(name: 'created_userid') required int createdUserId,
    @JsonKey(name: 'auth_userid') required int authUserId,
    @JsonKey(name: 'deauth_narration') required String deauthNarration,
  }) = _PepModel;

  factory PepModel.fromJson(Map<String, dynamic> json) =>
      _$PepModelFromJson(json);
}

extension PepModelExtension on PepModel {
  PepEntity toEntity() => PepEntity(
        id: id,
        pepOptionName: pepOptionName,
        description: description,
        pepType: pepType,
      );
}
