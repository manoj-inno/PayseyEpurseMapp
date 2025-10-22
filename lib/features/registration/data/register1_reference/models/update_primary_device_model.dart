import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_primary_device_model.freezed.dart';
part 'update_primary_device_model.g.dart';

@freezed
class UpdatePrimaryDeviceModel with _$UpdatePrimaryDeviceModel {
  const factory UpdatePrimaryDeviceModel({
    @Default('') String refNumber,
    @Default('') String deviceId,
    @Default('') String message,
  }) = _UpdatePrimaryDeviceModel;

  factory UpdatePrimaryDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$UpdatePrimaryDeviceModelFromJson(json);
}
