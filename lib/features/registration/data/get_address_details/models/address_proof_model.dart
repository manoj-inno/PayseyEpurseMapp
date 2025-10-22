import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_address_details/entities/address_proof_entity.dart';

part 'address_proof_model.freezed.dart';
part 'address_proof_model.g.dart';

@freezed
class AddressProofModel with _$AddressProofModel {
  const factory AddressProofModel({
    @JsonKey(name: 'addr_doc_id') required int id,
    @JsonKey(name: 'doc_type') required String docType,
    @JsonKey(name: 'entity_type') required int entityType,
    required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required DateTime createdTime,
    @JsonKey(name: 'auth_time') required DateTime authTime,
    @JsonKey(name: 'created_userid') required int createdUserId,
    @JsonKey(name: 'auth_userid') required int authUserId,
    @JsonKey(name: 'deauth_narration') required String deauthNarration,
    @JsonKey(name: 'is_master') required bool isMaster,
  }) = _AddressProofModel;

  factory AddressProofModel.fromJson(Map<String, dynamic> json) =>
      _$AddressProofModelFromJson(json);
}

extension AddressProofModelExtension on AddressProofModel {
  AddressProofEntity toEntity() => AddressProofEntity(
        id: id,
        docType: docType,
        entityType: entityType,
        isMaster: isMaster,
      );
}
