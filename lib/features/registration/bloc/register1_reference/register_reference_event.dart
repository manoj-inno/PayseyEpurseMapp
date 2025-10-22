part of 'register_reference_bloc.dart';

@freezed
class RegisterReferenceEvent with _$RegisterReferenceEvent {
  const factory RegisterReferenceEvent.checkMobile({
    required String mobile,
    required bool isLogin,
  }) = CheckMobileEvent;

  const factory RegisterReferenceEvent.generateOtp({
    required String mobile,
    MobileCheckEntity? entity,
    @Default(false) bool needDeviceUpdate,
    String? refNumber,
  }) = GenerateOtpEvent;

  const factory RegisterReferenceEvent.verifyMobileOtp({
    required String mobile,
    required String otp,
    MobileCheckEntity? entity,
  }) = VerifyMobileOtpEvent;

  const factory RegisterReferenceEvent.generateReference({
    required String mobile,
    required int userTypeId,
  }) = GenerateReferenceEvent;

  const factory RegisterReferenceEvent.updatePrimaryDevice({
    required String refNumber,
  }) = UpdatePrimaryDeviceEvent;

  const factory RegisterReferenceEvent.verifyDeviceUpdateOtp({
    required String mobile,
    required String otp,
    required String refNumber,
  }) = VerifyDeviceUpdateOtpEvent;
}
