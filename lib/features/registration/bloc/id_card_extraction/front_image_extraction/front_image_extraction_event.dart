part of 'front_image_extraction_bloc.dart';

@freezed
class FrontImageExtractionEvent with _$FrontImageExtractionEvent {
  const factory FrontImageExtractionEvent.captureImage({
    required Uint8List image,
    required String referenceId,
  }) = _CaptureImage;

  const factory FrontImageExtractionEvent.performFrontOcr({
    required String referenceId,
    required Uint8List image,
    required String side,
  }) = _PerformFrontOcr;
}
