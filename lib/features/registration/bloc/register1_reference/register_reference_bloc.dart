import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/core_usecase.dart';
import '../../../../core/util/api_response_code.dart';
import '../../domain/register1_reference/entities/check_mobile_entity.dart';
import '../../domain/register1_reference/entities/generate_reference_entity.dart';
import '../../domain/register1_reference/entities/update_primary_device_entity.dart';
import '../../domain/register1_reference/entities/verify_otp_entity.dart';
import '../../domain/register1_reference/usecases/check_mobile.dart';
import '../../domain/register1_reference/usecases/generate_otp.dart';
import '../../domain/register1_reference/usecases/generate_reference.dart';
import '../../domain/register1_reference/usecases/update_primary_device.dart';
import '../../domain/register1_reference/usecases/verify_mobile_otp.dart';

part 'register_reference_event.dart';
part 'register_reference_state.dart';
part 'register_reference_bloc.freezed.dart';

class RegisterReferenceBloc
    extends Bloc<RegisterReferenceEvent, RegisterReferenceState> {
  final CheckMobile checkMobileUseCase;
  final GenerateOtpUseCase generateOtpUseCase;
  final VerifyMobileOtpUseCase verifyMobileOtpUseCase;
  final GenerateReferenceUseCase generateReferenceUseCase;
  final UpdatePrimaryDeviceUsecase updatePrimaryDeviceUseCase;

  RegisterReferenceBloc({
    required this.checkMobileUseCase,
    required this.generateOtpUseCase,
    required this.verifyMobileOtpUseCase,
    required this.generateReferenceUseCase,
    required this.updatePrimaryDeviceUseCase,
  }) : super(const RegisterReferenceState.initial()) {
    on<RegisterReferenceEvent>((event, emit) async {
      await event.map(
        checkMobile: (e) => _onCheckMobile(e, emit),
        generateOtp: (e) => _onGenerateOtp(e, emit),
        verifyMobileOtp: (e) => _onVerifyMobileOtp(e, emit),
        generateReference: (e) => _onGenerateReference(e, emit),
        updatePrimaryDevice: (e) => _onUpdatePrimaryDevice(e, emit),
        verifyDeviceUpdateOtp: (e) => _onVerifyDeviceUpdateOtp(e, emit),
      );
    });
  }

  Future<void> _onCheckMobile(
      CheckMobileEvent event, Emitter<RegisterReferenceState> emit) async {
    emit(const RegisterReferenceState.loading(
        message: 'Checking mobile number...'));
    final result = await checkMobileUseCase.execute(event.mobile);
    result.fold(
      (failure) => _handleFailure(failure, emit, 'check mobile'),
      (mobileCheckEntity) {
        debugPrint("__________MOBILE CHECK ENTITY____________");
        debugPrint('REG STATUS: ${mobileCheckEntity.regStatus.toString()}');
        debugPrint('CODE: ${mobileCheckEntity.code.toString()}');
        if (mobileCheckEntity.code == ApiResponseCode.deviceMismatch.value) {
          emit(RegisterReferenceState.deviceMismatch(
            message: mobileCheckEntity.remark,
            refNumber: mobileCheckEntity.regRef,
          ));
        } else if (mobileCheckEntity.code ==
            ApiResponseCode.deviceExistsNewUser.value) {
          emit(RegisterReferenceState.deviceAlreadyExistsNewUser(
            message: mobileCheckEntity.remark,
          ));
        } else if (mobileCheckEntity.code ==
            ApiResponseCode.deviceExistsOldUser.value) {
          emit(RegisterReferenceState.deviceAlreadyExistsOldUser(
            message: mobileCheckEntity.remark,
          ));
        } else if (mobileCheckEntity.code == ApiResponseCode.error.value) {
          emit(RegisterReferenceState.mobileVerificationError(
            message: mobileCheckEntity.remark,
          ));
        } else {
          switch (mobileCheckEntity.regStatus) {
            case 0:
              emit(RegisterReferenceState.mobileNotVerified(
                entity: mobileCheckEntity,
              ));
              if (!event.isLogin) {
                add(RegisterReferenceEvent.generateOtp(
                  mobile: event.mobile,
                  entity: mobileCheckEntity,
                ));
              } else {
                emit(RegisterReferenceState.accountNotVerified(
                  entity: mobileCheckEntity,
                ));
              }
              break;
            case 10:
              emit(RegisterReferenceState.accountVerified(
                entity: mobileCheckEntity,
                message: 'Account verified',
                content:
                    'Customer Types already registered for this mobile number.\nContinue with the registration process.',
              ));
              break;
            case 20:
              emit(RegisterReferenceState.kycVerified(
                entity: mobileCheckEntity,
                message: 'KYC verified',
                content:
                    "KYC already registered for this mobile number.\nContinue with the registration process.",
              ));
              break;
            case 30:
              emit(RegisterReferenceState.occupationVerified(
                entity: mobileCheckEntity,
                message: 'Occupation verified',
                content:
                    "Occupation already registered for this mobile number.\nContinue with the registration process.",
              ));
              break;
            case 50:
              // Check user type to determine next screen
              if (mobileCheckEntity.userType == 23) {
                // Corporate user - go to mode of operation
                emit(RegisterReferenceState.modeOfOperationRegisteration(
                  entity: mobileCheckEntity,
                  message: 'Address verified',
                  content:
                      "Address already registered for this mobile number.\nContinue with the registration process.",
                ));
              } else {
                // Individual user (22) - go to PEP screen
                emit(RegisterReferenceState.addressVerified(
                  entity: mobileCheckEntity,
                  message: 'Address verified',
                  content:
                      "Address already registered for this mobile number.\nContinue with the registration process.",
                ));
              }
              break;
            case 80:
              emit(RegisterReferenceState.pepVerified(
                entity: mobileCheckEntity,
                message: 'Pep verified',
                content:
                    "Pep already registered for this mobile number.\nContinue with the registration process.",
              ));
              break;
            case 40:
              emit(RegisterReferenceState.businessDetailsRegisteration(
                entity: mobileCheckEntity,
                message: 'Business details registered',
                content:
                    "Business details already registered for this mobile number.\nContinue with the registration process.",
              ));
              break;
            // case 60:
            //   emit(RegisterReferenceState.businessAddressRegisteration(
            //     entity: mobileCheckEntity,
            //     message: 'Business address registered',
            //     content:
            //         "Business address already registered for this mobile number.\nContinue with the registration process.",
            //   ));
            //   break;
            case 70:
              emit(RegisterReferenceState.modeOfOperationRegisteration(
                entity: mobileCheckEntity,
                message: 'Mode of operation registered',
                content:
                    "Mode of operation already registered for this mobile number.\nContinue with the registration process.",
              ));
              break;
            case 90:
              emit(RegisterReferenceState.savePasscode(
                entity: mobileCheckEntity,
                message: 'Passcode saved',
                content:
                    "Passcode saved successfully.\nComplete the registration process.",
              ));
              break;
            case 100:
              emit(RegisterReferenceState.completedRegisteration(
                entity: mobileCheckEntity,
                message: 'Registration completed',
                content:
                    "Registration completed successfully.\nWait for the approval of your application or try logging in to your account.",
              ));
              break;
            default:
              emit(RegisterReferenceState.mobileVerificationError(
                message: 'Unknown status: ${mobileCheckEntity.regStatus}',
              ));
          }
        }
      },
    );
  }

  Future<void> _onGenerateOtp(
      GenerateOtpEvent event, Emitter<RegisterReferenceState> emit) async {
    emit(const RegisterReferenceState.loading(message: 'Generating OTP...'));
    try {
      final result = await generateOtpUseCase.execute(event.mobile);
      result.fold(
        (failure) => emit(RegisterReferenceState.mobileVerificationError(
          message: failure.message,
        )),
        (success) => emit(RegisterReferenceState.otpSentSuccessfully(
          checkEntity: event.entity,
          needDeviceUpdate: event.needDeviceUpdate,
          refNumber: event.refNumber,
        )),
      );
    } catch (e) {
      emit(RegisterReferenceState.mobileVerificationError(
        message: e.toString(),
      ));
    }
  }

  Future<void> _onVerifyMobileOtp(
      VerifyMobileOtpEvent event, Emitter<RegisterReferenceState> emit) async {
    emit(const RegisterReferenceState.loading(message: 'Verifying OTP...'));
    final result = await verifyMobileOtpUseCase
        .execute(UseCaseParams({'mobile': event.mobile, 'otp': event.otp}));
    result.fold(
      (failure) => _handleFailure(failure, emit, 'verify OTP'),
      (otpEntity) {
        debugPrint("__________OTP VERIFIED ENTITY____________");
        debugPrint(otpEntity.mobile);
        emit(RegisterReferenceState.otpVerifiedSuccessfully(
          entity: otpEntity,
          checkEntity: event.entity,
        ));
      },
    );
  }

  Future<void> _onGenerateReference(GenerateReferenceEvent event,
      Emitter<RegisterReferenceState> emit) async {
    emit(const RegisterReferenceState.loading(
        message: 'Generating reference...'));
    final result = await generateReferenceUseCase.execute(UseCaseParams(
        {'mobile': event.mobile, 'userTypeId': event.userTypeId}));
    result.fold(
      (failure) => _handleFailure(failure, emit, 'generate reference'),
      (referenceEntity) => emit(RegisterReferenceState.referenceGenerated(
        entity: referenceEntity,
      )),
    );
  }

  Future<void> _onUpdatePrimaryDevice(UpdatePrimaryDeviceEvent event,
      Emitter<RegisterReferenceState> emit) async {
    emit(const RegisterReferenceState.loading(
        message: 'Updating primary device...'));
    final result = await updatePrimaryDeviceUseCase.execute(event.refNumber);
    result.fold(
      (failure) => failure is ServerDownFailure
          ? emit(RegisterReferenceState.updatePrimaryServerDownError(
              message: failure.message,
            ))
          : emit(RegisterReferenceState.updatePrimaryDeviceError(
              message: failure.message,
              refNumber: event.refNumber,
            )),
      (updatePrimaryDeviceEntity) =>
          emit(RegisterReferenceState.updatePrimaryDeviceSuccess(
        entity: updatePrimaryDeviceEntity,
      )),
    );
  }

  Future<void> _onVerifyDeviceUpdateOtp(VerifyDeviceUpdateOtpEvent event,
      Emitter<RegisterReferenceState> emit) async {
    emit(const RegisterReferenceState.loading(message: 'Verifying OTP...'));
    try {
      final result = await verifyMobileOtpUseCase
          .execute(UseCaseParams({'mobile': event.mobile, 'otp': event.otp}));
      await result.fold(
        (failure) async {
          emit(RegisterReferenceState.mobileVerificationError(
            message: failure.message,
          ));
        },
        (success) async {
          // OTP verified, now update the device
          emit(RegisterReferenceState.updatePrimaryDeviceLoading(
            message: 'Updating primary device...',
            refNumber: event.refNumber,
          ));
          try {
            final updateResult =
                await updatePrimaryDeviceUseCase.execute(event.refNumber);
            updateResult.fold(
              (failure) => emit(RegisterReferenceState.updatePrimaryDeviceError(
                message: failure.message,
                refNumber: event.refNumber,
              )),
              (success) =>
                  emit(RegisterReferenceState.updatePrimaryDeviceSuccess(
                entity: success,
              )),
            );
          } catch (e) {
            emit(RegisterReferenceState.updatePrimaryDeviceError(
              message: e.toString(),
              refNumber: event.refNumber,
            ));
          }
        },
      );
    } catch (e) {
      emit(RegisterReferenceState.mobileVerificationError(
        message: e.toString(),
      ));
    }
  }

  void _handleFailure(
      Failure failure, Emitter<RegisterReferenceState> emit, String operation) {
    if (failure is ServerDownFailure) {
      emit(const RegisterReferenceState.serverDownError(
        message: 'Server is currently unavailable. Please try again later.',
      ));
    } else if (failure is ServerFailure && failure.statusCode == 503) {
      emit(const RegisterReferenceState.serverDownError(
        message: 'Server is currently unavailable. Please try again later.',
      ));
    } else {
      emit(RegisterReferenceState.mobileVerificationError(
        message: 'Failed to $operation: ${failure.message}',
      ));
    }
  }
}
