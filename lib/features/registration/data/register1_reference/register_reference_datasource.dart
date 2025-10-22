import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'models/check_mobile_model.dart';
import 'models/generate_reference_model.dart';
import 'models/mobile_otp_model.dart';
import 'models/update_primary_device_model.dart';
import 'models/verify_otp_model.dart';

abstract class RegisterReferenceDatasource {
  Future<MobileCheckModel> checkMobile(String mobile);
  Future<MobileOtpModel> generateMobileOtp(String mobile);
  Future<VerifyOtpModel> verifyMobileOtp(String mobile, String otp);
  Future<GenerateReferenceModel> generateReference(
      String mobile, int userTypeId);
  Future<UpdatePrimaryDeviceModel> updatePrimaryDevice(String refNumber);
}

class RegisterReferenceDatasourceImpl implements RegisterReferenceDatasource {
  final http.Client client;

  RegisterReferenceDatasourceImpl({required this.client});

  @override
  Future<MobileCheckModel> checkMobile(String mobile) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;

    final String url =
        "${ApiConfig.epurseUrl}/registration/status";

    debugPrint("__________API CONFIG DEBUG____________");
    debugPrint("Epurse URL: ${ApiConfig.epurseUrl}");
    debugPrint("Full URL: $url");
    debugPrint("Master Username: ${ApiConfig.masterUserName}");
    debugPrint("Password length: ${ApiConfig.password.length}");

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };
    debugPrint("__________CHECK MOBILE URL____________");
    debugPrint(url);
    debugPrint("__________CHECK MOBILE HEADERS____________");
    debugPrint(headers.toString());
    debugPrint("__________CHECK MOBILE DEVICE INFO____________");
    debugPrint(deviceInfo);

    debugPrint("__________CHECK MOBILE REQUEST____________");
    debugPrint(json.encode({"mobile": mobile}));

    // Test connectivity first
    try {
      final connectivityTest = await client.get(Uri.parse("${ApiConfig.epurseUrl}/health")).timeout(
        const Duration(seconds: 10),
      );
      debugPrint("__________CONNECTIVITY TEST____________");
      debugPrint("Health check status: ${connectivityTest.statusCode}");
    } catch (e) {
      debugPrint("__________CONNECTIVITY TEST FAILED____________");
      debugPrint("Error: $e");
      // Continue with the main request anyway
    }

    final response = await client.post(
      Uri.parse(url),
      body: json.encode({"mobile": mobile}),
      headers: headers,
    ).timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        throw ServerException(
          message: "Request timed out. Please check your internet connection and try again.",
          statusCode: 408,
        );
      },
    );

    debugPrint("__________CHECK MOBILE RESPONSE____________");
    debugPrint("Status Code: ${response.statusCode}");
    debugPrint("Response Body Length: ${response.body.length}");
    debugPrint("Response Body: '${response.body}'");
    log(response.body);

    if (response.statusCode == 503) {
      throw ServerException(
          message: "Server is currently unavailable", statusCode: 503);
    }

    // Check if response body is empty
    if (response.body.trim().isEmpty) {
      throw ServerException(
          message: "Server returned empty response. Please try again later.", 
          statusCode: response.statusCode);
    }

    // Check if response body is valid JSON
    if (response.body.trim().toLowerCase() == 'service unavailable') {
      throw ServerException(
          message: "Service is currently unavailable. Please try again later.", 
          statusCode: response.statusCode);
    }

    try {
      final responseData = jsonDecode(response.body);
      final message = responseData['message'];

      if (response.statusCode == 200) {
        return MobileCheckModel.fromJson(json.decode(response.body));
      } else {
        throw NetworkException(message: message);
      }
    } catch (e) {
      // Handle JSON parsing errors
      if (e is FormatException) {
        throw ServerException(
            message: "Invalid response from server. Please try again later.", 
            statusCode: response.statusCode);
      }
      rethrow;
    }
  }

  @override
  Future<MobileOtpModel> generateMobileOtp(String mobile) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;

    final String url = "${ApiConfig.epurseUrl}/registration/send_mobile_otp";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString(),
    };

    debugPrint("__________MOBILE OTP REQUEST____________");
    debugPrint(json.encode({"mobile": mobile}));

    final response = await client.post(
      Uri.parse(url),
      body: json.encode({"mobile": mobile}),
      headers: headers,
    );

    debugPrint("__________MOBILE OTP RESPONSE____________");
    log(response.body);

    if (response.statusCode == 503) {
      throw ServerException(
          message: "Server is currently unavailable", statusCode: 503);
    }

    // Check if response body is valid JSON
    if (response.body.trim().toLowerCase() == 'service unavailable') {
      throw ServerException(
          message: "Service is currently unavailable. Please try again later.", 
          statusCode: response.statusCode);
    }

    try {
      final responseData = jsonDecode(response.body);
      final message = responseData['message'];

      if (response.statusCode == 200) {
        if (responseData['code'] == ApiResponseCode.success.value) {
          return MobileOtpModel.fromJson(json.decode(response.body));
        } else {
          throw ServerException(message: message);
        }
      } else {
        throw NetworkException(message: message);
      }
    } catch (e) {
      // Handle JSON parsing errors
      if (e is FormatException) {
        throw ServerException(
            message: "Invalid response from server. Please try again later.", 
            statusCode: response.statusCode);
      }
      rethrow;
    }
  }

  @override
  Future<VerifyOtpModel> verifyMobileOtp(String mobile, String otp) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;

    final String url = "${ApiConfig.epurseUrl}/registration/verify_mobile_otp";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };

    debugPrint("__________VERIFY MOBILE OTP REQUEST____________");
    debugPrint(jsonEncode({
      'mobile': mobile,
      'otp': otp,
    }));

    final response = await client.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode({
        'mobile': mobile,
        'otp': otp,
      }),
    );

    debugPrint("__________VERIFY MOBILE OTP RESPONSE____________");
    log(response.body);

    if (response.statusCode == 503) {
      throw ServerException(
          message: "Server is currently unavailable", statusCode: 503);
    }

    // Check if response body is valid JSON
    if (response.body.trim().toLowerCase() == 'service unavailable') {
      throw ServerException(
          message: "Service is currently unavailable. Please try again later.", 
          statusCode: response.statusCode);
    }

    try {
      final responseData = jsonDecode(response.body);
      final code = responseData['code'];
      final message = responseData['message'];

      if (response.statusCode == 200) {
        if (code == ApiResponseCode.success.value) {
          return VerifyOtpModel.fromJson(jsonDecode(response.body));
        } else {
          debugPrint("______________VERIFY MOBILE OTP ERROR____________");
          debugPrint("Message: $message");
          throw ServerException(message: message);
        }
      } else {
        throw NetworkException(message: message);
      }
    } catch (e) {
      // Handle JSON parsing errors
      if (e is FormatException) {
        throw ServerException(
            message: "Invalid response from server. Please try again later.", 
            statusCode: response.statusCode);
      }
      rethrow;
    }
  }

  @override
  Future<GenerateReferenceModel> generateReference(
      String mobile, int userTypeId) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;

    final String url = "${ApiConfig.epurseUrl}/registration/gen_ref";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };

    final response = await client.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode({'mobile': mobile, 'user_type': userTypeId}),
    );

    debugPrint("__________GENERATE REFERENCE REQUEST____________");
    debugPrint(jsonEncode({'mobile': mobile, 'user_type': userTypeId}));
    debugPrint("__________GENERATE REFERENCE RESPONSE____________");
    log(response.body);

    if (response.statusCode == 503) {
      throw ServerException(
          message: "Server is currently unavailable", statusCode: 503);
    }

    final responseData = jsonDecode(response.body);
    final message = responseData['message'];

    if (response.statusCode == 200) {
      if (responseData['code'] == ApiResponseCode.success.value) {
        preferencesManager.setReferenceNumber(responseData['data']['user_ref']);
        String? referenceNumber = preferencesManager.referenceNumber;
        debugPrint("__________REFERENCE NUMBER____________");
        debugPrint(referenceNumber);
        return GenerateReferenceModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException(message: message);
      }
    } else {
      throw NetworkException(message: message);
    }
  }

  @override
  Future<UpdatePrimaryDeviceModel> updatePrimaryDevice(String refNumber) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;

    final String url = "${ApiConfig.epurseUrl}/registration/switch_device";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };

    final response = await client.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode({'user_ref': refNumber}),
    );

    debugPrint("__________UPDATE PRIMARY DEVICE REQUEST____________");
    debugPrint(jsonEncode({'ref_number': refNumber}));
    debugPrint("__________UPDATE PRIMARY DEVICE RESPONSE____________");
    log(response.body);

    if (response.statusCode == 503) {
      throw ServerException(
          message: "Server is currently unavailable", statusCode: 503);
    }

    final responseData = jsonDecode(response.body);
    final message = responseData['message'];

    if (response.statusCode == 200) {
      return UpdatePrimaryDeviceModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerDownFailure(message: message);
    }
  }
}
