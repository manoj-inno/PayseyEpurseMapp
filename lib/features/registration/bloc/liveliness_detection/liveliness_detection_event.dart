part of 'liveliness_detection_bloc.dart';

@freezed
class LivelinessDetectionEvent with _$LivelinessDetectionEvent {
  const factory LivelinessDetectionEvent.initializeCamera() = InitializeCamera;

  const factory LivelinessDetectionEvent.updateFaceDetection({
    required bool isFaceDetected,
    required bool isBlinking,
    double? headEulerAngleY,
  }) = UpdateFaceDetection;

  const factory LivelinessDetectionEvent.startCountdown() = StartCountdown;

  const factory LivelinessDetectionEvent.updateCountdown({
    required int countdown,
  }) = UpdateCountdown;

  const factory LivelinessDetectionEvent.captureSelfie() = CaptureSelfie;

  const factory LivelinessDetectionEvent.matchFaces({
    required Uint8List candidateImage,
    required String referenceImageUrl,
    required String refNum,
  }) = MatchFacesEvent;

  const factory LivelinessDetectionEvent.updateCameraResolution({
    required int width,
    required int height,
  }) = UpdateCameraResolution;
}
