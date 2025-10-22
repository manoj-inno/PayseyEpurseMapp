part of 'register_address_bloc.dart';

@freezed
class RegisterAddressState with _$RegisterAddressState {
  const factory RegisterAddressState.initial() = _Initial;
  const factory RegisterAddressState.loading() = _Loading;
  const factory RegisterAddressState.loaded({
    required RegisterAddressEntity registerAddress,
  }) = _Loaded;
  const factory RegisterAddressState.error({
    required String message,
  }) = _Error;
  const factory RegisterAddressState.serverDown({
    required String message,
  }) = _ServerDown;
}
