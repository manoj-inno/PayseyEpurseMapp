import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_id_model.freezed.dart';
part 'device_id_model.g.dart';

@freezed
class DeviceIdModel with _$DeviceIdModel {
  const factory DeviceIdModel({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'device_model') required String deviceModel,
    @JsonKey(name: 'device_manufacturer') required String deviceManufacturer,
    @JsonKey(name: 'device_os') required String deviceOS,
  }) = _DeviceIdModel;

  factory DeviceIdModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceIdModelFromJson(json);
}
