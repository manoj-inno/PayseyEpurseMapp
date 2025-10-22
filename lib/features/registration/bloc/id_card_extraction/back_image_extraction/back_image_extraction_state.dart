part of 'back_image_extraction_bloc.dart';

@freezed
class BackImageExtractionState with _$BackImageExtractionState {
  const factory BackImageExtractionState.initial() = _Initial;

  const factory BackImageExtractionState.loading() = _Loading;

  const factory BackImageExtractionState.success({
    required OcrBackEntity ocrBackEntity,
    required Uint8List capturedImage,
  }) = _Success;

  const factory BackImageExtractionState.error({
    required String message,
  }) = _Error;

  const factory BackImageExtractionState.serverDown({
    required String message,
  }) = _ServerDown;

  const factory BackImageExtractionState.imageCaptured({
    required Uint8List capturedImage,
  }) = _ImageCaptured;
}
