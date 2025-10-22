part of 'register_kyc_bloc.dart';

@freezed
class RegisterKycState with _$RegisterKycState {
  const factory RegisterKycState.initial() = _Initial;

  const factory RegisterKycState.loading() = _Loading;

  const factory RegisterKycState.success({
    required RegisterKycEntity registerKyc,
  }) = _Success;

  const factory RegisterKycState.error({
    required String message,
  }) = _Error;

  const factory RegisterKycState.serverDown({
    required String message,
  }) = _ServerDown;

  const factory RegisterKycState.documentUploaded({
    required KycDocumentEntity entity,
  }) = _KycDocumentUploaded;

  const factory RegisterKycState.kycVerified({
    required KycVerificationEntity entity,
  }) = _KycVerified;
}
