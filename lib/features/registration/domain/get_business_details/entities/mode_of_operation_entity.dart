import 'package:freezed_annotation/freezed_annotation.dart';

part 'mode_of_operation_entity.freezed.dart';
part 'mode_of_operation_entity.g.dart';

@freezed
class ModeOfOperationEntity with _$ModeOfOperationEntity {
  const factory ModeOfOperationEntity({
    required int modeId,
    required String modeDesc,
    required int numOfUsersRequired,
    required int status,
    required int processStatus,
    required bool isStakeHolderRequired,
    required String authStatus,
    required DateTime createdTime,
    required DateTime authTime,
    required int createdUserId,
    required int authUserId,
    required String deauthNarration,
  }) = _ModeOfOperationEntity;

  factory ModeOfOperationEntity.fromJson(Map<String, dynamic> json) =>
      _$ModeOfOperationEntityFromJson(json);
}
