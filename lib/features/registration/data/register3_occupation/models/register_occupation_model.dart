import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'register_occupation_model.freezed.dart';
part 'register_occupation_model.g.dart';

@freezed
class RegisterOccupationModel with _$RegisterOccupationModel {
  const factory RegisterOccupationModel({
    @JsonKey(name: 'user_ref') required String refNumber,
    @JsonKey(name: 'source_of_income') required int sourceOfFund,
    required int occupation,
    @JsonKey(name: 'employer_name') String? employer,
    @JsonKey(name: 'employment_status') String? employmentStatus,
    @JsonKey(name: 'employee_id') String? employeeId,
    @JsonKey(name: 'place_of_position') String? placeOfPosting,
    @JsonKey(name: 'annual_income') int? salaryRange,
    @JsonKey(name: 'net_worth') int? netWorth,
    @JsonKey(name: 'office_full_address') String? officeAddress,
    @JsonKey(name: 'office_phone_number') String? officePhoneNumber,
    String? designation,
  }) = _RegisterOccupationModel;

  factory RegisterOccupationModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterOccupationModelFromJson(json);
}

@freezed
class RegisterOccupationResponseModel with _$RegisterOccupationResponseModel {
  const factory RegisterOccupationResponseModel({
    required int code,
    required String message,
    @JsonKey(name: 'reg_ref') required String regRef,
    @JsonKey(name: 'reg_status') required int regStatus,
    required String remark,
    required String status,
  }) = _RegisterOccupationResponseModel;

  factory RegisterOccupationResponseModel.fromJson(Map<String, dynamic> json) {
    debugPrint("______________PARSING RESPONSE MODEL____________");
    debugPrint("Parsing JSON: $json");

    try {
      // Check if data exists
      if (!json.containsKey('data')) {
        debugPrint("Error: 'data' field missing in response");
        return RegisterOccupationResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Missing data field in response",
          regRef: "unknown",
          regStatus: 0,
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      final data = json['data'];

      // Check if data is a Map
      if (data is! Map<String, dynamic>) {
        debugPrint("Error: 'data' field is not a map");
        return RegisterOccupationResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Invalid data format",
          regRef: "unknown",
          regStatus: 0,
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      // Check if reg_info exists
      if (!data.containsKey('reg_info')) {
        debugPrint("Error: 'reg_info' field missing in data");
        return RegisterOccupationResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Missing reg_info field in response",
          regRef: "unknown",
          regStatus: 0,
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      final regInfo = data['reg_info'];

      // Check if reg_info is a Map
      if (regInfo is! Map<String, dynamic>) {
        debugPrint("Error: 'reg_info' field is not a map");
        return RegisterOccupationResponseModel(
          code: json["code"] ?? 0,
          message: json["message"] ?? "Invalid reg_info format",
          regRef: "unknown",
          regStatus: 0,
          remark: json["remark"] ?? "",
          status: json["status"] ?? "",
        );
      }

      // Parse with null safety
      return RegisterOccupationResponseModel(
        code: json["code"] ?? 0,
        message: json["message"] ?? "",
        regRef: regInfo["user_ref"] ?? "unknown",
        regStatus: regInfo["status"] ?? 0,
        remark: json["remark"] ?? "",
        status: json["status"] ?? "",
      );
    } catch (e) {
      debugPrint("Error parsing response model: $e");
      // Return a fallback model rather than throwing an exception
      return RegisterOccupationResponseModel(
        code: 0,
        message: "Error parsing response: $e",
        regRef: "error",
        regStatus: 0,
        remark: "parsing_error",
        status: "error",
      );
    }
  }
}
