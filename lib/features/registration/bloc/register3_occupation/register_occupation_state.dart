part of 'register_occupation_bloc.dart';

@freezed
class RegisterOccupationState with _$RegisterOccupationState {
  const factory RegisterOccupationState.initial() = _Initial;

  const factory RegisterOccupationState.loading() = _Loading;

  const factory RegisterOccupationState.success({
    required RegisterOccupationResponseModel occupation,
  }) = _Success;

  const factory RegisterOccupationState.failure({
    required String message,
  }) = _Failure;

  const factory RegisterOccupationState.serverDown({
    required String message,
  }) = _ServerDown;
}
