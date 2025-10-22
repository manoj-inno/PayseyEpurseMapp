import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_account_types/entity/account_sub_type_entity.dart';

part 'account_sub_type_model.freezed.dart';
part 'account_sub_type_model.g.dart';

@freezed
class AccountSubTypeModel with _$AccountSubTypeModel {
  const factory AccountSubTypeModel({
    required int id,
    @JsonKey(name: 'account_type_id') required int accountTypeId,
    @JsonKey(name: 'customer_type_id') required int customerTypeId,
    @JsonKey(name: 'subtype_name') required String subtypeName,
    required String description,
    required int status,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required String createdTime,
    @JsonKey(name: 'auth_time') required String authTime,
  }) = _AccountSubTypeModel;

  factory AccountSubTypeModel.fromJson(Map<String, dynamic> json) =>
      _$AccountSubTypeModelFromJson(json);
}

extension AccountSubTypeModelExtension on AccountSubTypeModel {
  AccountSubTypeEntity toEntity() => AccountSubTypeEntity(
        id: id,
        accountTypeId: accountTypeId,
        customerTypeId: customerTypeId,
        subtypeName: subtypeName,
        description: description,
        status: status,
      );
}
