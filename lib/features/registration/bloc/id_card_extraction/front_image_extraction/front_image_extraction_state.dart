part of 'front_image_extraction_bloc.dart';

@freezed
class FrontImageExtractionState with _$FrontImageExtractionState {
  const factory FrontImageExtractionState.initial() = _Initial;

  const factory FrontImageExtractionState.loading() = _Loading;

  const factory FrontImageExtractionState.success({
    required OcrFrontEntity ocrFrontEntity,
    required Uint8List capturedImage,
  }) = _Success;

  const factory FrontImageExtractionState.error({
    required String message,
  }) = _Error;

  const factory FrontImageExtractionState.serverDown({
    required String message,
  }) = _ServerDown;

  const factory FrontImageExtractionState.imageCaptured({
    required Uint8List capturedImage,
  }) = _ImageCaptured;
}
