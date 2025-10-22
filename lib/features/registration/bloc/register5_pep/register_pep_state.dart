part of 'register_pep_bloc.dart';

@freezed
class RegisterPepState with _$RegisterPepState {
  const factory RegisterPepState.initial() = _Initial;
  const factory RegisterPepState.loading() = _Loading;
  const factory RegisterPepState.loaded({
    required RegisterPepResponseModel registerPep,
  }) = _Loaded;
  const factory RegisterPepState.error({
    required String message,
  }) = _Error;
  const factory RegisterPepState.serverDown({
    required String message,
  }) = _ServerDown;
}
