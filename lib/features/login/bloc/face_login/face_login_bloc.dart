import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'face_login_event.dart';
part 'face_login_state.dart';

class FaceLoginBloc extends Bloc<FaceLoginEvent, FaceLoginState> {
  static const platform =
      MethodChannel('innovitegra.epurse.ewallet/face_login');
  Timer? _autoSelfieTimer;

  FaceLoginBloc() : super(FaceLoginInitial()) {
    // Initialize camera
    on<InitializeCamera>(_onInitializeCamera);

    // Update face detection
    on<UpdateFaceDetection>(_onUpdateFaceDetection);

    // Update camera resolution
    on<UpdateCameraResolution>(_onUpdateCameraResolution);

    // Capture selfie
    on<CaptureSelfie>(_onCaptureSelfie);

    // Selfie ready
    on<SelfieReady>(_onSelfieReady);

    // Capture failed
    on<CaptureFailed>(_onCaptureFailed);

    // Cleanup camera
    on<CleanupCamera>(_onCleanupCamera);

    // Toggle auto-selfie
    on<ToggleAutoSelfie>(_onToggleAutoSelfie);

    // Set up platform method call handler
    _setupMethodCallHandler();
  }

  void _setupMethodCallHandler() {
    platform.setMethodCallHandler((call) async {
      debugPrint('Face Login BLoC received method call: ${call.method}');

      switch (call.method) {
        case 'onCameraResolutionAvailable':
          final width = call.arguments['width'] as int;
          final height = call.arguments['height'] as int;
          final aspectRatio = call.arguments['aspectRatio'] as double;
          add(UpdateCameraResolution(
            width: width,
            height: height,
            aspectRatio: aspectRatio,
          ));
          break;

        case 'onFaceUpdate':
          final isFaceDetected = call.arguments['faceDetected'] as bool;
          add(UpdateFaceDetection(
            faceDetected: isFaceDetected,
            leftEyeOpen: call.arguments['leftEyeOpen'],
            rightEyeOpen: call.arguments['rightEyeOpen'],
            headAngle: call.arguments['headEulerAngleY'],
          ));
          break;
      }
    });
  }

  Future<void> _onInitializeCamera(
    InitializeCamera event,
    Emitter<FaceLoginState> emit,
  ) async {
    emit(CameraInitializing());

    try {
      final textureId = await platform.invokeMethod<int>('startFaceLogin');
      if (textureId != null) {
        emit(CameraReady(textureId: textureId));
      } else {
        emit(const FaceLoginError('Failed to get camera texture ID'));
      }
    } on PlatformException catch (e) {
      emit(FaceLoginError('Failed to initialize camera: ${e.message}'));
    }
  }

  Future<void> _onUpdateFaceDetection(
    UpdateFaceDetection event,
    Emitter<FaceLoginState> emit,
  ) async {
    final currentState = state;
    if (currentState is CameraReady) {
      final faceData = FaceDetectionData(
        leftEyeOpen: event.leftEyeOpen,
        rightEyeOpen: event.rightEyeOpen,
        headAngle: event.headAngle,
      );

      // Handle auto-selfie functionality
      if (event.faceDetected &&
          !currentState.faceDetected &&
          currentState.autoSelfieEnabled &&
          state is! CapturingSelfie) {
        _autoSelfieTimer?.cancel();
        _autoSelfieTimer = Timer(const Duration(milliseconds: 500), () {
          if (state is CameraReady &&
              (state as CameraReady).faceDetected &&
              (state as CameraReady).autoSelfieEnabled &&
              state is! CapturingSelfie) {
            add(CaptureSelfie());
          }
        });
      } else if (!event.faceDetected && currentState.faceDetected) {
        _autoSelfieTimer?.cancel();
      }

      emit(currentState.copyWith(
        faceDetected: event.faceDetected,
        faceData: faceData,
      ));
    }
  }

  void _onUpdateCameraResolution(
    UpdateCameraResolution event,
    Emitter<FaceLoginState> emit,
  ) {
    final currentState = state;
    if (currentState is CameraReady) {
      emit(currentState.copyWith(
        previewSize: Size(event.width.toDouble(), event.height.toDouble()),
        aspectRatio: event.aspectRatio,
      ));
    }
  }

  Future<void> _onCaptureSelfie(
    CaptureSelfie event,
    Emitter<FaceLoginState> emit,
  ) async {
    final currentState = state;
    if (currentState is CameraReady && currentState.faceDetected) {
      emit(CapturingSelfie(
        textureId: currentState.textureId,
        faceDetected: currentState.faceDetected,
      ));

      try {
        final imageData =
            await platform.invokeMethod<Uint8List>('captureFaceLoginSelfie');
        if (imageData != null) {
          add(SelfieReady(imageData));
        } else {
          add(const CaptureFailed(
              'Failed to capture selfie: No image data received'));
        }
      } on PlatformException catch (e) {
        add(CaptureFailed('Failed to capture selfie: ${e.message}'));
      }
    }
  }

  void _onSelfieReady(
    SelfieReady event,
    Emitter<FaceLoginState> emit,
  ) {
    emit(SelfieCaptured(event.imageData));
  }

  void _onCaptureFailed(
    CaptureFailed event,
    Emitter<FaceLoginState> emit,
  ) {
    final currentState = state;
    if (currentState is CameraReady) {
      emit(FaceLoginError(event.error));
      // Revert back to camera ready state after showing error
      emit(currentState);
    } else {
      emit(FaceLoginError(event.error));
    }
  }

  Future<void> _onCleanupCamera(
    CleanupCamera event,
    Emitter<FaceLoginState> emit,
  ) async {
    _autoSelfieTimer?.cancel();
    try {
      await platform.invokeMethod('stopFaceLogin');
      emit(FaceLoginInitial());
    } catch (e) {
      debugPrint('Error cleaning up camera: $e');
    }
  }

  void _onToggleAutoSelfie(
    ToggleAutoSelfie event,
    Emitter<FaceLoginState> emit,
  ) {
    final currentState = state;
    if (currentState is CameraReady) {
      emit(currentState.copyWith(autoSelfieEnabled: event.enabled));
    }
  }

  @override
  Future<void> close() {
    _autoSelfieTimer?.cancel();
    // Ensure camera is cleaned up when bloc is closed
    if (state is CameraReady || state is CapturingSelfie) {
      platform.invokeMethod('stopFaceLogin');
    }
    return super.close();
  }
}
