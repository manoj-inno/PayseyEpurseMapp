import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:epurse/core/storage/preferences_manager.dart';

import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../data/register6_save_passcode/model/register_passcode_model.dart';
import '../../domain/register6_save_passcode/entity/complete_reg_entity.dart';
import '../../domain/register6_save_passcode/entity/register_passcode_entity.dart';
import '../../domain/register6_save_passcode/usecase/complete_reg.dart';
import '../../domain/register6_save_passcode/usecase/save_passcode.dart';

part 'register_save_passcode_event.dart';
part 'register_save_passcode_state.dart';
part 'register_save_passcode_bloc.freezed.dart';

class RegisterSavePasscodeBloc
    extends Bloc<RegisterSavePasscodeEvent, RegisterSavePasscodeState> {
  final SavePasscodeUseCase savePasscodeUseCase;
  final CompleteRegUseCase completeRegUseCase;

  RegisterSavePasscodeBloc(
      {required this.savePasscodeUseCase, required this.completeRegUseCase})
      : super(const RegisterSavePasscodeState.initial()) {
    on<RegisterSavePasscodeEvent>((event, emit) async {
      await event.when(
        savePasscode: (passwordEnc, userRef) async {
          emit(const RegisterSavePasscodeState.loading());

          final result = await savePasscodeUseCase(SavePasscodeRequestModel(
              passwordEnc: passwordEnc, userRef: userRef));

          await result.fold((failure) async {
            if (!emit.isDone) {
              if (failure is ServerFailure) {
                emit(RegisterSavePasscodeState.serverFailure(
                    message: failure.message));
              } else {
                emit(RegisterSavePasscodeState.failure(message: failure.message));
              }
            }
          }, (success) async {
            if (!emit.isDone) {
              debugPrint("🔐 Emitting success state for save passcode");
              emit(
                  RegisterSavePasscodeState.success(savePasscodeEntity: success));
              
              debugPrint("🔄 Starting complete registration with userRef: ${success.userRef}");
              // Handle complete registration directly instead of triggering another event
              await _handleCompleteRegistration(success.userRef, emit, passwordEnc);
            } else {
              debugPrint("❌ Emit is done, cannot proceed with complete registration");
            }
          });
        },
        completeRegistration: (userRef) async {
          await _handleCompleteRegistration(userRef, emit, null);
        },
      );
    });
  }

  Future<void> _handleCompleteRegistration(String userRef, Emitter<RegisterSavePasscodeState> emit, [String? encryptedPin]) async {
    debugPrint("______________COMPLETE REGISTRATION STARTED____________");
    debugPrint("UserRef: $userRef");
    debugPrint("Emit is done: ${emit.isDone}");
    
    if (!emit.isDone) {
      emit(const RegisterSavePasscodeState.completeRegistrationLoading());
    } else {
      debugPrint("❌ Cannot emit loading state - emit is done");
      return;
    }

    try {
      debugPrint("🔄 Calling completeRegUseCase with userRef: $userRef");
      final result = await completeRegUseCase(userRef);
      debugPrint("✅ completeRegUseCase completed");

      result.fold((failure) {
        debugPrint("______________COMPLETE REGISTRATION FAILURE____________");
        debugPrint("Failure: ${failure.toString()}");
        debugPrint("Failure Type: ${failure.runtimeType}");
        
        if (!emit.isDone) {
          if (failure is ServerDownException) {
            emit(RegisterSavePasscodeState.completeRegistrationServerDown(
                message: failure.message));
          } else {
            emit(RegisterSavePasscodeState.completeRegistrationFailure(
                message: failure.toString()));
          }
        }
      }, (success) async {
        debugPrint("______________COMPLETE REGISTRATION SUCCESS____________");
        debugPrint("Success: ${success.toString()}");
        debugPrint("JWT Token: ${success.jwtToken}");
        debugPrint("Refresh Token: ${success.refreshToken}");
        debugPrint("User Ref: ${success.userRef}");
        debugPrint("Emit is done: ${emit.isDone}");
        
        // Emit success state first, before updating preferences
        if (!emit.isDone) {
          debugPrint("🔄 Emitting complete registration success state");
          emit(RegisterSavePasscodeState.completeRegistrationSuccess(
              registrationEntity: success));
          debugPrint("✅ Success state emitted");
        } else {
          debugPrint("❌ Cannot emit success state - emit is done");
        }
        
        // Update preferences after emitting the state
        try {
          PreferencesManager preferencesManager =
              await PreferencesManager.getInstance();
          await preferencesManager.setIsRegistered(true);
      if (success.jwtToken.isNotEmpty) {
            await preferencesManager.setJWTToken(success.jwtToken);
            debugPrint("🔑 JWT Token stored: ${success.jwtToken}");
          } else {
            debugPrint("⚠️ JWT Token not provided in new API response");
          }
          
          if (success.refreshToken.isNotEmpty) {
            await preferencesManager.setRefreshToken(success.refreshToken);
            debugPrint("🔄 Refresh Token stored: ${success.refreshToken}");
          } else {
            debugPrint("⚠️ Refresh Token not provided in new API response");
          }
          
          // Store the encrypted PIN only after complete registration succeeds
          if (encryptedPin != null && encryptedPin.isNotEmpty) {
            await preferencesManager.setUserPin(encryptedPin);
            debugPrint("🔐 PIN stored locally after complete registration: $encryptedPin");
          }
          await preferencesManager.setReferenceNumber(success.userRef);
          debugPrint("✅ Preferences updated successfully");
        } catch (e) {
          debugPrint("❌ Failed to update preferences: $e");
        }
      });
    } catch (e) {
      debugPrint("______________COMPLETE REGISTRATION EXCEPTION____________");
      debugPrint("Exception: ${e.toString()}");
      debugPrint("Exception Type: ${e.runtimeType}");
      
      if (!emit.isDone) {
        emit(RegisterSavePasscodeState.completeRegistrationFailure(
            message: "Complete registration failed: ${e.toString()}"));
      }
    }
  }
}
