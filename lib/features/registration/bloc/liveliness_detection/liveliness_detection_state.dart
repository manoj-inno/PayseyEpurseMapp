part of 'liveliness_detection_bloc.dart';

@freezed
class LivelinessDetectionState with _$LivelinessDetectionState {
  const factory LivelinessDetectionState.initial() = CameraInitial;

  const factory LivelinessDetectionState.initialized({
    @Default(0) int textureId,
    @Default(false) bool isFaceDetected,
    @Default(false) bool isBlinking,
    @Default(false) bool hasCompletedBlinking,
    @Default(false) bool hasCompletedRightMovement,
    @Default(false) bool hasCompletedLeftMovement,
    @Default(false) bool isVerificationCompleted,
    @Default(1080) int width,
    @Default(1350) int height,
  }) = CameraInitialized;

  const factory LivelinessDetectionState.error({
    required String message,
  }) = CameraError;

  const factory LivelinessDetectionState.verificationSuccess() =
      LivelinessVerificationSuccess;

  const factory LivelinessDetectionState.countdownInProgress({
    required int countdown,
    required int textureId,
    required bool isFaceDetected,
    required bool isBlinking,
    required bool hasCompletedBlinking,
    required bool hasCompletedRightMovement,
    required bool hasCompletedLeftMovement,
    required bool isVerificationCompleted,
    required int width,
    required int height,
  }) = LivelinessCountdown;

  const factory LivelinessDetectionState.selfieCapture({
    required Uint8List selfieImage,
  }) = LivelinessSelfieCapture;

  const factory LivelinessDetectionState.faceMatchInitial() = FaceMatchInitial;

  const factory LivelinessDetectionState.faceMatchLoading() = FaceMatchLoading;

  const factory LivelinessDetectionState.faceMatchSuccess({
    required FaceMatchEntity entity,
    required Uint8List selfieImage,
  }) = FaceMatchSuccess;

  const factory LivelinessDetectionState.faceMatchFailure({
    required String message,
    required Uint8List selfieImage,
  }) = FaceMatchFailure;

  const factory LivelinessDetectionState.faceMatchServerDownError({
    required String message,
  }) = FaceMatchServerDownError;
}
