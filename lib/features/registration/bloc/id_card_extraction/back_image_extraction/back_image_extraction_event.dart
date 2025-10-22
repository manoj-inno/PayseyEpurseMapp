part of 'back_image_extraction_bloc.dart';

@freezed
class BackImageExtractionEvent with _$BackImageExtractionEvent {
  const factory BackImageExtractionEvent.captureImage({
    required Uint8List image,
    required String referenceId,
  }) = _CaptureImage;

  const factory BackImageExtractionEvent.performBackOcr({
    required String referenceId,
    required Uint8List image,
    required String side,
  }) = _PerformBackOcr;
}
