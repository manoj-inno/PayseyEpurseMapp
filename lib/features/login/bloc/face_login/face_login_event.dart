part of 'face_login_bloc.dart';

sealed class FaceLoginEvent extends Equatable {
  const FaceLoginEvent();

  @override
  List<Object> get props => [];
}

// Event to initialize the camera
class InitializeCamera extends FaceLoginEvent {}

// Event when face is detected or not detected
class UpdateFaceDetection extends FaceLoginEvent {
  final bool faceDetected;
  final double? leftEyeOpen;
  final double? rightEyeOpen;
  final double? headAngle;

  const UpdateFaceDetection({
    required this.faceDetected,
    this.leftEyeOpen,
    this.rightEyeOpen,
    this.headAngle,
  });

  @override
  List<Object> get props => [faceDetected];
}

// Event to update camera resolution
class UpdateCameraResolution extends FaceLoginEvent {
  final int width;
  final int height;
  final double aspectRatio;

  const UpdateCameraResolution({
    required this.width,
    required this.height,
    required this.aspectRatio,
  });

  @override
  List<Object> get props => [width, height, aspectRatio];
}

// Event to capture selfie
class CaptureSelfie extends FaceLoginEvent {}

// Event when selfie has been captured
class SelfieReady extends FaceLoginEvent {
  final Uint8List imageData;

  const SelfieReady(this.imageData);

  @override
  List<Object> get props => [imageData];
}

// Event when capture fails
class CaptureFailed extends FaceLoginEvent {
  final String error;

  const CaptureFailed(this.error);

  @override
  List<Object> get props => [error];
}

// Event to clean up camera resources
class CleanupCamera extends FaceLoginEvent {}

// Event to enable/disable auto-selfie feature
class ToggleAutoSelfie extends FaceLoginEvent {
  final bool enabled;

  const ToggleAutoSelfie(this.enabled);

  @override
  List<Object> get props => [enabled];
}
