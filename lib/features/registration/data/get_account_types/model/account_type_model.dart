import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_account_types/entity/account_type_entity.dart';

part 'account_type_model.freezed.dart';
part 'account_type_model.g.dart';

@freezed
class AccountTypeModel with _$AccountTypeModel {
  const factory AccountTypeModel({
    required int id,
    @JsonKey(name: 'type_name') required String typeName,
    required String description,
    required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required String createdTime,
    @JsonKey(name: 'auth_time') required String authTime,
    @JsonKey(name: 'created_userid') required int createdUserId,
    @JsonKey(name: 'auth_userid') required int authUserId,
    @JsonKey(name: 'deauth_narration') required String deauthNarration,
  }) = _AccountTypeModel;

  factory AccountTypeModel.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeModelFromJson(json);
}

extension AccountTypeModelExtension on AccountTypeModel {
  AccountTypeEntity toEntity() => AccountTypeEntity(
        id: id,
        typeName: typeName,
        description: description,
        status: status,
      );
}
