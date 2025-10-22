import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

import '../../domain/face_matching/entity/face_matching_entity.dart';
import '../../domain/face_matching/match_faces.dart';
import '../../presentation/liveliness_detection_screen.dart';

part 'liveliness_detection_event.dart';
part 'liveliness_detection_state.dart';
part 'liveliness_detection_bloc.freezed.dart';

class LivelinessDetectionBloc
    extends Bloc<LivelinessDetectionEvent, LivelinessDetectionState> {
  final MatchFacesUseCase matchFacesUseCase;
  LivelinessDetectionBloc(this.matchFacesUseCase)
      : super(const LivelinessDetectionState.initial()) {
    on<LivelinessDetectionEvent>((event, emit) async {
      await event.when(
        initializeCamera: () async => await _onInitializeCamera(emit),
        updateFaceDetection:
            (isFaceDetected, isBlinking, headEulerAngleY) async =>
                await _onUpdateFaceDetection(
                    isFaceDetected, isBlinking, headEulerAngleY, emit),
        startCountdown: () async => await _onStartCountdown(emit),
        updateCountdown: (countdown) async =>
            _onUpdateCountdown(countdown, emit),
        captureSelfie: () async => await _onCaptureSelfie(emit),
        matchFaces: (candidateImage, referenceImageUrl, refNum) async =>
            await _onMatchFaces(
                candidateImage, referenceImageUrl, refNum, emit),
        updateCameraResolution: (width, height) async =>
            _onUpdateCameraResolution(width, height, emit),
      );
    });
  }

  Future<void> _onInitializeCamera(
      Emitter<LivelinessDetectionState> emit) async {
    try {
      final textureId = await LivelinessDetectionScreen.platform
          .invokeMethod<int>('openFrontCamera');

      if (textureId != null && textureId >= 0) {
        emit(LivelinessDetectionState.initialized(textureId: textureId));
      } else {
        emit(const LivelinessDetectionState.error(
            message: 'Failed to initialize camera: Invalid texture ID'));
      }
    } on ClientException catch (e) {
      emit(LivelinessDetectionState.faceMatchServerDownError(
          message: 'Failed to initialize camera: ${e.toString()}'));
    } on SocketException catch (e) {
      emit(LivelinessDetectionState.faceMatchServerDownError(
          message: 'Failed to initialize camera: ${e.toString()}'));
    } catch (e) {
      emit(LivelinessDetectionState.error(
          message: 'Failed to initialize camera: ${e.toString()}'));
    }
  }

  Future<void> _onUpdateFaceDetection(
    bool isFaceDetected,
    bool isBlinking,
    double? headEulerAngleY,
    Emitter<LivelinessDetectionState> emit,
  ) async {
    if (state is CameraInitialized) {
      final currentState = state as CameraInitialized;

      // If face is not detected and verification is not completed, reset all verification states
      if (!isFaceDetected && !currentState.isVerificationCompleted) {
        emit(LivelinessDetectionState.initialized(
          textureId: currentState.textureId,
          isFaceDetected: false,
          isBlinking: false,
          width: currentState.width,
          height: currentState.height,
        ));
        return;
      }

      var newState = LivelinessDetectionState.initialized(
        textureId: currentState.textureId,
        isFaceDetected: isFaceDetected,
        isBlinking: isBlinking,
        hasCompletedBlinking: currentState.hasCompletedBlinking,
        hasCompletedRightMovement: currentState.hasCompletedRightMovement,
        hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
        isVerificationCompleted: currentState.isVerificationCompleted,
        width: currentState.width,
        height: currentState.height,
      );

      // Only process verifications if not already completed
      if (!currentState.isVerificationCompleted) {
        // If blinking is detected and not already completed, mark it as completed
        if (isBlinking && !currentState.hasCompletedBlinking) {
          newState = LivelinessDetectionState.initialized(
            textureId: currentState.textureId,
            isFaceDetected: isFaceDetected,
            isBlinking: isBlinking,
            hasCompletedBlinking: true,
            hasCompletedRightMovement: currentState.hasCompletedRightMovement,
            hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
            isVerificationCompleted: currentState.isVerificationCompleted,
            width: currentState.width,
            height: currentState.height,
          );
        }

        // Only check for head movement if blinking is already completed
        if (currentState.hasCompletedBlinking && headEulerAngleY != null) {
          // Check for right movement (positive angle)
          if (headEulerAngleY >= 30.0 &&
              !currentState.hasCompletedRightMovement) {
            newState = LivelinessDetectionState.initialized(
              textureId: currentState.textureId,
              isFaceDetected: isFaceDetected,
              isBlinking: isBlinking,
              hasCompletedBlinking: currentState.hasCompletedBlinking,
              hasCompletedRightMovement: true,
              hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
              isVerificationCompleted: currentState.isVerificationCompleted,
              width: currentState.width,
              height: currentState.height,
            );
          }
          // Check for left movement (negative angle) only after right movement is completed
          else if (headEulerAngleY <= -30.0 &&
              currentState.hasCompletedRightMovement &&
              !currentState.hasCompletedLeftMovement) {
            newState = LivelinessDetectionState.initialized(
              textureId: currentState.textureId,
              isFaceDetected: isFaceDetected,
              isBlinking: isBlinking,
              hasCompletedBlinking: currentState.hasCompletedBlinking,
              hasCompletedRightMovement: currentState.hasCompletedRightMovement,
              hasCompletedLeftMovement: true,
              isVerificationCompleted: currentState.isVerificationCompleted,
              width: currentState.width,
              height: currentState.height,
            );
          }
        }

        // If all steps are completed, mark verification as completed and start countdown
        final isAllStepsCompleted = newState is CameraInitialized &&
            newState.hasCompletedBlinking &&
            newState.hasCompletedRightMovement &&
            newState.hasCompletedLeftMovement;

        if (isAllStepsCompleted) {
          newState = LivelinessDetectionState.initialized(
            textureId: currentState.textureId,
            isFaceDetected: isFaceDetected,
            isBlinking: isBlinking,
            hasCompletedBlinking: currentState.hasCompletedBlinking,
            hasCompletedRightMovement: currentState.hasCompletedRightMovement,
            hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
            isVerificationCompleted: true,
            width: currentState.width,
            height: currentState.height,
          );
          emit(newState);
          // Start countdown directly instead of adding a new event
          await _onStartCountdown(emit);
          return;
        }

        emit(newState);
      }
    }
  }

  Future<void> _onStartCountdown(Emitter<LivelinessDetectionState> emit) async {
    if (state is CameraInitialized) {
      final currentState = state as CameraInitialized;
      for (int i = 3; i > 0; i--) {
        emit(LivelinessDetectionState.countdownInProgress(
          countdown: i,
          textureId: currentState.textureId,
          isFaceDetected: currentState.isFaceDetected,
          isBlinking: currentState.isBlinking,
          hasCompletedBlinking: currentState.hasCompletedBlinking,
          hasCompletedRightMovement: currentState.hasCompletedRightMovement,
          hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
          isVerificationCompleted: currentState.isVerificationCompleted,
          width: currentState.width,
          height: currentState.height,
        ));
        await Future.delayed(const Duration(seconds: 1));
      }
      // Call capture selfie directly instead of adding a new event
      await _onCaptureSelfie(emit);
    }
  }

  void _onUpdateCountdown(
      int countdown, Emitter<LivelinessDetectionState> emit) {
    if (state is CameraInitialized) {
      final currentState = state as CameraInitialized;
      emit(LivelinessDetectionState.countdownInProgress(
        countdown: countdown,
        textureId: currentState.textureId,
        isFaceDetected: currentState.isFaceDetected,
        isBlinking: currentState.isBlinking,
        hasCompletedBlinking: currentState.hasCompletedBlinking,
        hasCompletedRightMovement: currentState.hasCompletedRightMovement,
        hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
        isVerificationCompleted: currentState.isVerificationCompleted,
        width: currentState.width,
        height: currentState.height,
      ));
    }
  }

  Future<void> _onCaptureSelfie(Emitter<LivelinessDetectionState> emit) async {
    try {
      // Handle both LivelinessCountdown and CameraInitialized states
      if (state is LivelinessCountdown) {
        final countdownState = state as LivelinessCountdown;
        final Uint8List? imageData = await LivelinessDetectionScreen.platform
            .invokeMethod<Uint8List>('captureSelfie');
        if (imageData != null) {
          emit(LivelinessDetectionState.selfieCapture(selfieImage: imageData));
        } else {
          emit(LivelinessDetectionState.initialized(
            textureId: countdownState.textureId,
            isFaceDetected: countdownState.isFaceDetected,
            isBlinking: countdownState.isBlinking,
            hasCompletedBlinking: countdownState.hasCompletedBlinking,
            hasCompletedRightMovement: countdownState.hasCompletedRightMovement,
            hasCompletedLeftMovement: countdownState.hasCompletedLeftMovement,
            isVerificationCompleted: countdownState.isVerificationCompleted,
            width: countdownState.width,
            height: countdownState.height,
          ));
          emit(const LivelinessDetectionState.error(
              message: 'Failed to capture selfie'));
        }
      } else if (state is CameraInitialized) {
        final currentState = state as CameraInitialized;
        final Uint8List? imageData = await LivelinessDetectionScreen.platform
            .invokeMethod<Uint8List>('captureSelfie');
        if (imageData != null) {
          emit(LivelinessDetectionState.selfieCapture(selfieImage: imageData));
        } else {
          emit(LivelinessDetectionState.initialized(
            textureId: currentState.textureId,
            isFaceDetected: currentState.isFaceDetected,
            isBlinking: currentState.isBlinking,
            hasCompletedBlinking: currentState.hasCompletedBlinking,
            hasCompletedRightMovement: currentState.hasCompletedRightMovement,
            hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
            isVerificationCompleted: currentState.isVerificationCompleted,
            width: currentState.width,
            height: currentState.height,
          ));
          emit(const LivelinessDetectionState.error(
              message: 'Failed to capture selfie'));
        }
      }
    } on PlatformException catch (e) {
      if (state is LivelinessCountdown) {
        final countdownState = state as LivelinessCountdown;
        emit(LivelinessDetectionState.initialized(
          textureId: countdownState.textureId,
          isFaceDetected: countdownState.isFaceDetected,
          isBlinking: countdownState.isBlinking,
          hasCompletedBlinking: countdownState.hasCompletedBlinking,
          hasCompletedRightMovement: countdownState.hasCompletedRightMovement,
          hasCompletedLeftMovement: countdownState.hasCompletedLeftMovement,
          isVerificationCompleted: countdownState.isVerificationCompleted,
          width: countdownState.width,
          height: countdownState.height,
        ));
        emit(LivelinessDetectionState.error(
            message: e.message ?? 'Failed to capture selfie'));
      } else if (state is CameraInitialized) {
        final currentState = state as CameraInitialized;
        emit(LivelinessDetectionState.initialized(
          textureId: currentState.textureId,
          isFaceDetected: currentState.isFaceDetected,
          isBlinking: currentState.isBlinking,
          hasCompletedBlinking: currentState.hasCompletedBlinking,
          hasCompletedRightMovement: currentState.hasCompletedRightMovement,
          hasCompletedLeftMovement: currentState.hasCompletedLeftMovement,
          isVerificationCompleted: currentState.isVerificationCompleted,
          width: currentState.width,
          height: currentState.height,
        ));
        emit(LivelinessDetectionState.error(
            message: e.message ?? 'Failed to capture selfie'));
      }
    }
  }

  Future<void> _onMatchFaces(
    Uint8List candidateImage,
    String referenceImageUrl,
    String refNum,
    Emitter<LivelinessDetectionState> emit,
  ) async {
    emit(const LivelinessDetectionState.faceMatchLoading());
    try {
      final result =
          await matchFacesUseCase(candidateImage, referenceImageUrl, refNum);
      emit(LivelinessDetectionState.faceMatchSuccess(
          entity: result, selfieImage: candidateImage));
    } catch (error) {
      emit(LivelinessDetectionState.faceMatchFailure(
          message: error.toString(), selfieImage: candidateImage));
    }
  }

  void _onUpdateCameraResolution(
    int width,
    int height,
    Emitter<LivelinessDetectionState> emit,
  ) {
    state.maybeWhen(
      initialized: (textureId,
          isFaceDetected,
          isBlinking,
          hasCompletedBlinking,
          hasCompletedRightMovement,
          hasCompletedLeftMovement,
          isVerificationCompleted,
          width,
          height) {
        emit(LivelinessDetectionState.initialized(
          textureId: textureId,
          isFaceDetected: isFaceDetected,
          isBlinking: isBlinking,
          hasCompletedBlinking: hasCompletedBlinking,
          hasCompletedRightMovement: hasCompletedRightMovement,
          hasCompletedLeftMovement: hasCompletedLeftMovement,
          isVerificationCompleted: isVerificationCompleted,
          width: width,
          height: height,
        ));
      },
      orElse: () {},
    );
  }
}
