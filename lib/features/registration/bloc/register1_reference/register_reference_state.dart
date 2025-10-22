part of 'register_reference_bloc.dart';

@freezed
class RegisterReferenceState with _$RegisterReferenceState {
  const factory RegisterReferenceState.initial() = MobileVerificationInitial;

  const factory RegisterReferenceState.loading({
    required String message,
  }) = MobileVerificationLoading;

  const factory RegisterReferenceState.mobileNotVerified({
    required MobileCheckEntity entity,
  }) = MobileNotVerified;

  const factory RegisterReferenceState.deviceMismatch({
    required String message,
    required String refNumber,
  }) = DeviceMismatch;

  const factory RegisterReferenceState.deviceAlreadyExistsNewUser({
    required String message,
  }) = DeviceAlreadyExistsNewUser;

  const factory RegisterReferenceState.deviceAlreadyExistsOldUser({
    required String message,
  }) = DeviceAlreadyExistsOldUser;

  const factory RegisterReferenceState.updatePrimaryDeviceLoading({
    required String message,
    required String refNumber,
  }) = UpdatePrimaryDeviceLoading;

  const factory RegisterReferenceState.updatePrimaryDeviceSuccess({
    required UpdatePrimaryDeviceEntity entity,
  }) = UpdatePrimaryDeviceSuccess;

  const factory RegisterReferenceState.updatePrimaryDeviceError({
    required String message,
    required String refNumber,
  }) = UpdatePrimaryDeviceError;

  const factory RegisterReferenceState.updatePrimaryServerDownError({
    required String message,
  }) = UpdatePrimaryServerDownError;

  const factory RegisterReferenceState.accountNotVerified({
    required MobileCheckEntity entity,
  }) = AccountNotVerified;

  const factory RegisterReferenceState.accountVerified({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = AccountVerified;

  const factory RegisterReferenceState.kycVerified({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = KYCVerified;

  const factory RegisterReferenceState.guardianVerified({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = GuardianVerified;

  const factory RegisterReferenceState.occupationVerified({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = OccupationVerified;

  const factory RegisterReferenceState.addressVerified({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = AddressVerified;

  const factory RegisterReferenceState.pepVerified({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = PepVerified;

  const factory RegisterReferenceState.businessDetailsRegisteration({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = BusinessDetailsRegisteration;

  const factory RegisterReferenceState.businessAddressProofRegisteration({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = BusinessAddressProofRegisteration;

  const factory RegisterReferenceState.businessAddressRegisteration({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = BusinessAddressRegisteration;

  const factory RegisterReferenceState.businessDocRegisteration({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = BusinessDocRegisteration;

  const factory RegisterReferenceState.modeOfOperationRegisteration({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = ModeOfOperationRegisteration;

  const factory RegisterReferenceState.savePasscode({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = SavePasscode;

  const factory RegisterReferenceState.completedRegisteration({
    required MobileCheckEntity entity,
    required String message,
    required String content,
  }) = CompletedRegisteration;

  const factory RegisterReferenceState.mobileVerificationError({
    required String message,
  }) = MobileVerificationError;

  const factory RegisterReferenceState.otpSentSuccessfully({
    MobileCheckEntity? checkEntity,
    @Default(false) bool needDeviceUpdate,
    String? refNumber,
  }) = OtpSentSuccessfully;

  const factory RegisterReferenceState.otpVerifiedSuccessfully({
    required MobileOtpVerificationEntity entity,
    MobileCheckEntity? checkEntity,
  }) = OtpVerifiedSuccessfully;

  const factory RegisterReferenceState.referenceGenerated({
    required GenerateReference entity,
  }) = ReferenceGenerated;

  const factory RegisterReferenceState.serverDownError({
    required String message,
  }) = ServerDownError;
}
