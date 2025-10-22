import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_business_details/entities/mode_of_operation_entity.dart';

part 'mode_of_operation_model.freezed.dart';
part 'mode_of_operation_model.g.dart';

@freezed
class ModeOfOperationModel with _$ModeOfOperationModel {
  const factory ModeOfOperationModel({
    @JsonKey(name: 'mode_id') required int modeId,
    @JsonKey(name: 'mode_desc') required String modeDesc,
    @JsonKey(name: 'num_of_users_required', defaultValue: 0) required int numOfUsersRequired,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required DateTime createdTime,
    @JsonKey(name: 'auth_time') required DateTime authTime,
    @JsonKey(name: 'created_userid') required int createdUserId,
    @JsonKey(name: 'auth_userid') required int authUserId,
    @JsonKey(name: 'deauth_narration') required String deauthNarration,
    @JsonKey(name: 'stackholder_required') required bool isStakeHolderRequired,
  }) = _ModeOfOperationModel;

  factory ModeOfOperationModel.fromJson(Map<String, dynamic> json) =>
      _$ModeOfOperationModelFromJson(json);
}

extension ModeOfOperationModelExtension on ModeOfOperationModel {
  ModeOfOperationEntity toEntity() => ModeOfOperationEntity(
        modeId: modeId,
        modeDesc: modeDesc,
        numOfUsersRequired: numOfUsersRequired,
        status: status,
        processStatus: processStatus,
        authStatus: authStatus,
        createdTime: createdTime,
        authTime: authTime,
        createdUserId: createdUserId,
        authUserId: authUserId,
        deauthNarration: deauthNarration,
        isStakeHolderRequired: isStakeHolderRequired,
      );
}
