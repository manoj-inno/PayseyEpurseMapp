part of 'register_kyc_bloc.dart';

@freezed
class RegisterKycEvent with _$RegisterKycEvent {
  const factory RegisterKycEvent.initiateRegisterKyc({
    required RegisterKycRequestModel request,
  }) = _InitiateRegisterKyc;
}
