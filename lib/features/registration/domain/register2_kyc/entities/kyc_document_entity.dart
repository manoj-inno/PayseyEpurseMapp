import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_document_entity.freezed.dart';

@freezed
class KycDocumentEntity with _$KycDocumentEntity {
  const factory KycDocumentEntity({
    required String documentId,
    required String documentType,
    required String documentNumber,
    required String documentImage,
    required String status,
    required DateTime uploadedAt,
  }) = _KycDocumentEntity;
}
