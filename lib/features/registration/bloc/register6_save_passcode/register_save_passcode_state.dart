part of 'register_save_passcode_bloc.dart';

@freezed
class RegisterSavePasscodeState with _$RegisterSavePasscodeState {
  const factory RegisterSavePasscodeState.initial() = _Initial;
  const factory RegisterSavePasscodeState.loading() = _Loading;
  const factory RegisterSavePasscodeState.success({
    required SavePasscodeEntity savePasscodeEntity,
  }) = _Success;
  const factory RegisterSavePasscodeState.failure({
    required String message,
  }) = _Failure;
  const factory RegisterSavePasscodeState.serverFailure({
    required String message,
  }) = _ServerFailure;
  const factory RegisterSavePasscodeState.serverDown({
    required String message,
  }) = _ServerDown;
  const factory RegisterSavePasscodeState.completeRegistrationLoading() =
      _CompleteRegistrationLoading;
  const factory RegisterSavePasscodeState.completeRegistrationSuccess({
    required RegistrationEntity registrationEntity,
  }) = _CompleteRegistrationSuccess;
  const factory RegisterSavePasscodeState.completeRegistrationFailure({
    required String message,
  }) = _CompleteRegistrationFailure;
  const factory RegisterSavePasscodeState.completeRegistrationServerDown({
    required String message,
  }) = _CompleteRegistrationServerDown;
}
