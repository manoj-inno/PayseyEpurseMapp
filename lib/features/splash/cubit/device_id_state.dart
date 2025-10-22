import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_id_state.freezed.dart';

@freezed
class DeviceIdState with _$DeviceIdState {
  const factory DeviceIdState.initial() = _Initial;
  const factory DeviceIdState.loading() = _Loading;
  const factory DeviceIdState.success() = _Success;
  const factory DeviceIdState.failure(String error) = _Failure;
}
