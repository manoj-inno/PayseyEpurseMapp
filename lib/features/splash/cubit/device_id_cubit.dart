import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/storage/preferences_manager.dart';
import '../../../core/util/encryption_util.dart';
import '../domain/models/device_id_model.dart';
import 'device_id_state.dart';

class DeviceIdCubit extends Cubit<DeviceIdState> {
  DeviceIdCubit() : super(const DeviceIdState.initial());

  Future<void> getDeviceIdAndStore() async {
    emit(const DeviceIdState.loading());
    const platform = MethodChannel('innovitegra.epurse.ewallet/device_id');

    try {
      final Map deviceData = await platform.invokeMethod('getDeviceId');
      final String deviceId = deviceData['deviceId'];
      final String deviceModel = deviceData['deviceModel'];
      final String deviceManufacturer = deviceData['deviceManufacturer'];

      debugPrint('Device ID: $deviceId');
      debugPrint('Device Model: $deviceModel');
      debugPrint('Device Manufacturer: $deviceManufacturer');

      final encryptedDeviceId = EncryptionUtil.encryptFunction(deviceId);
      final String deviceOS = Platform.isAndroid ? 'android' : 'ios';

      final deviceInfo = DeviceIdModel(
        deviceId: encryptedDeviceId,
        deviceModel: deviceModel,
        deviceManufacturer: deviceManufacturer,
        deviceOS: deviceOS,
      );

      debugPrint(jsonEncode(deviceInfo.toJson()));

      PreferencesManager preferencesManager =
          await PreferencesManager.getInstance();
      await preferencesManager.setDeviceInfo(jsonEncode(deviceInfo.toJson()));

      emit(const DeviceIdState.success());
    } catch (e) {
      debugPrint('Failed to get device info: $e');
      emit(DeviceIdState.failure('Failed to get device info: $e'));
    }
  }
}
