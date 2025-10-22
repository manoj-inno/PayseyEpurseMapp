import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_verification_entity.freezed.dart';

@freezed
class KycVerificationEntity with _$KycVerificationEntity {
  const factory KycVerificationEntity({
    required String refNumber,
    required String status,
    required DateTime verifiedAt,
    required List<String> verifiedDocuments,
  }) = _KycVerificationEntity;
}
