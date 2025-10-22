import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'register_address_model.freezed.dart';
part 'register_address_model.g.dart';

@freezed
class RegisterAddressRequestModel with _$RegisterAddressRequestModel {
  const RegisterAddressRequestModel._();

  const factory RegisterAddressRequestModel({
    required List<String> imagePaths,
    required List<Map<String, dynamic>> addressDetails,
  }) = _RegisterAddressRequestModel;

  String toMap() {
    return jsonEncode(addressDetails);
  }
}

@freezed
class RegisterAddressResponseModel with _$RegisterAddressResponseModel {
  const factory RegisterAddressResponseModel({
    required int code,
    required RegisterAddressData data,
    required String message,
    required String remark,
    required String status,
  }) = _RegisterAddressResponseModel;

  factory RegisterAddressResponseModel.fromJson(Map<String, dynamic> json) {
    debugPrint("______________PARSING ADDRESS RESPONSE MODEL____________");
    debugPrint("Parsing JSON: $json");

    try {
      // Check if data exists
      if (!json.containsKey('data')) {
        debugPrint("Error: 'data' field missing in response");
        return RegisterAddressResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Missing data field in response",
          data: RegisterAddressData(
              regInfo: RegInfo(userType: 0, userRef: "unknown", regStatus: 0)),
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      final data = json['data'];

      // Check if data is a Map
      if (data is! Map<String, dynamic>) {
        debugPrint("Error: 'data' field is not a map");
        return RegisterAddressResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Invalid data format",
          data: RegisterAddressData(
              regInfo: RegInfo(userType: 0, userRef: "unknown", regStatus: 0)),
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      // Check if reg_info exists
      if (!data.containsKey('reg_info')) {
        debugPrint("Error: 'reg_info' field missing in data");
        return RegisterAddressResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Missing reg_info field in response",
          data: RegisterAddressData(
              regInfo: RegInfo(userType: 0, userRef: "unknown", regStatus: 0)),
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      final regInfo = data['reg_info'];

      // Check if reg_info is a Map
      if (regInfo is! Map<String, dynamic>) {
        debugPrint("Error: 'reg_info' field is not a map");
        return RegisterAddressResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Invalid reg_info format",
          data: RegisterAddressData(
              regInfo: RegInfo(userType: 0, userRef: "unknown", regStatus: 0)),
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      // Parse with null safety
      return RegisterAddressResponseModel(
        code: json["code"] ?? 0,
        message: json["message"] ?? "",
        data: RegisterAddressData(
          regInfo: RegInfo(
            userType: regInfo["user_type"] ?? 0,
            userRef: regInfo["user_ref"] ?? "unknown",
            regStatus: regInfo["status"] ?? 0,
          ),
        ),
        remark: json["remark"] ?? "",
        status: json["status"] ?? "",
      );
    } catch (e) {
      debugPrint("Error parsing response model: $e");
      // Return a fallback model rather than throwing an exception
      return RegisterAddressResponseModel(
        code: 0,
        message: "Error parsing response: $e",
        data: RegisterAddressData(
            regInfo: RegInfo(userType: 0, userRef: "error", regStatus: 0)),
        remark: "parsing_error",
        status: "error",
      );
    }
  }
}

@freezed
class RegisterAddressData with _$RegisterAddressData {
  const factory RegisterAddressData({
    required RegInfo regInfo,
  }) = _RegisterAddressData;

  factory RegisterAddressData.fromJson(Map<String, dynamic> json) =>
      _$RegisterAddressDataFromJson(json);
}

@freezed
class RegInfo with _$RegInfo {
  const factory RegInfo({
    required int userType,
    required String userRef,
    required int regStatus,
  }) = _RegInfo;

  factory RegInfo.fromJson(Map<String, dynamic> json) =>
      _$RegInfoFromJson(json);
}
