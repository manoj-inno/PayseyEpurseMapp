import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_proof_entity.freezed.dart';
part 'address_proof_entity.g.dart';

@freezed
class AddressProofEntity with _$AddressProofEntity {
  const factory AddressProofEntity({
    required int id,
    required String docType,
    required int entityType,
    bool? isMaster,
  }) = _AddressProofEntity;

  factory AddressProofEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressProofEntityFromJson(json);
}
