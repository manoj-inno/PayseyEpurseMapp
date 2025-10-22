part of 'register_save_passcode_bloc.dart';

@freezed
class RegisterSavePasscodeEvent with _$RegisterSavePasscodeEvent {
  const factory RegisterSavePasscodeEvent.savePasscode({
    @JsonKey(name: 'password_enc') required String passwordEnc,
    @JsonKey(name: 'user_ref') required String userRef,
  }) = _SavePasscode;

  const factory RegisterSavePasscodeEvent.completeRegistration({
    required String userRef,
  }) = _CompleteRegistration;
}
