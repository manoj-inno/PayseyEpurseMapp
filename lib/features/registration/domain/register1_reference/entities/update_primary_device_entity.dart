import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_primary_device_entity.freezed.dart';
part 'update_primary_device_entity.g.dart';

@freezed
class UpdatePrimaryDeviceEntity with _$UpdatePrimaryDeviceEntity {
  const factory UpdatePrimaryDeviceEntity({
    required String refNumber,
    required String deviceId,
    required String message,
  }) = _UpdatePrimaryDeviceEntity;

  factory UpdatePrimaryDeviceEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdatePrimaryDeviceEntityFromJson(json);
}
