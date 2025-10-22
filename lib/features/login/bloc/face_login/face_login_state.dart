part of 'face_login_bloc.dart';

sealed class FaceLoginState extends Equatable {
  const FaceLoginState();

  @override
  List<Object> get props => [];
}

final class FaceLoginInitial extends FaceLoginState {}

class CameraInitializing extends FaceLoginState {}

class CameraReady extends FaceLoginState {
  final int textureId;
  final Size? previewSize;
  final double? aspectRatio;
  final bool faceDetected;
  final bool autoSelfieEnabled;
  final FaceDetectionData? faceData;

  const CameraReady({
    required this.textureId,
    this.previewSize,
    this.aspectRatio,
    this.faceDetected = false,
    this.autoSelfieEnabled = true,
    this.faceData,
  });

  CameraReady copyWith({
    int? textureId,
    Size? previewSize,
    double? aspectRatio,
    bool? faceDetected,
    bool? autoSelfieEnabled,
    FaceDetectionData? faceData,
  }) {
    return CameraReady(
      textureId: textureId ?? this.textureId,
      previewSize: previewSize ?? this.previewSize,
      aspectRatio: aspectRatio ?? this.aspectRatio,
      faceDetected: faceDetected ?? this.faceDetected,
      autoSelfieEnabled: autoSelfieEnabled ?? this.autoSelfieEnabled,
      faceData: faceData ?? this.faceData,
    );
  }

  @override
  List<Object> get props => [
        textureId,
        faceDetected,
        autoSelfieEnabled,
        if (previewSize != null) previewSize!,
        if (aspectRatio != null) aspectRatio!,
        if (faceData != null) faceData!,
      ];
}

class CapturingSelfie extends FaceLoginState {
  final int textureId;
  final bool faceDetected;

  const CapturingSelfie({
    required this.textureId,
    required this.faceDetected,
  });

  @override
  List<Object> get props => [textureId, faceDetected];
}

class SelfieCaptured extends FaceLoginState {
  final Uint8List imageData;

  const SelfieCaptured(this.imageData);

  @override
  List<Object> get props => [imageData];
}

class FaceLoginError extends FaceLoginState {
  final String error;

  const FaceLoginError(this.error);

  @override
  List<Object> get props => [error];
}

class FaceDetectionData extends Equatable {
  final double? leftEyeOpen;
  final double? rightEyeOpen;
  final double? headAngle;

  const FaceDetectionData({
    this.leftEyeOpen,
    this.rightEyeOpen,
    this.headAngle,
  });

  @override
  List<Object> get props => [
        if (leftEyeOpen != null) leftEyeOpen!,
        if (rightEyeOpen != null) rightEyeOpen!,
        if (headAngle != null) headAngle!,
      ];
}
