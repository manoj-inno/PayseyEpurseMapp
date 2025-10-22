import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_account_types/entity/customer_type_entity.dart';

part 'customer_type_model.freezed.dart';
part 'customer_type_model.g.dart';

@freezed
class CustomerTypeModel with _$CustomerTypeModel {
  const factory CustomerTypeModel({
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
  }) = _CustomerTypeModel;

  factory CustomerTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerTypeModelFromJson(json);
}

extension CustomerTypeModelExtension on CustomerTypeModel {
  CustomerTypeEntity toEntity() => CustomerTypeEntity(
        id: id,
        typeName: typeName,
        description: description,
        status: status,
      );
}
