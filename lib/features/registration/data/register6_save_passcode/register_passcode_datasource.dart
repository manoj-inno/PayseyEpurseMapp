import 'dart:convert';
import 'dart:io';
import 'package:epurse/core/api/api_config.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'model/complete_reg_model.dart';
import 'model/register_passcode_model.dart';

abstract class SavePasscodeRemoteDataSource {
  Future<SavePasscodeResponseModel> savePasscode(
      SavePasscodeRequestModel requestModel);
  Future<RegistrationModel> completeRegistration(String userRef);
}

class SavePasscodeRemoteDataSourceImpl implements SavePasscodeRemoteDataSource {
  final http.Client client;

  SavePasscodeRemoteDataSourceImpl(this.client);

  @override
  Future<SavePasscodeResponseModel> savePasscode(
      SavePasscodeRequestModel requestModel) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    final String url = "${ApiConfig.epurseUrl}/registration/passcode";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };
    final requestBody = requestModel.toJson();
    debugPrint("______________SAVE PASSCODE REQUEST____________");
    debugPrint("Request URL: $url");
    debugPrint("Request Headers: $headers");
    debugPrint("Request Body (raw): $requestBody");
    debugPrint("Request Body (JSON): ${jsonEncode(requestBody)}");
    
    // Debug field mappings
    debugPrint("Field Mappings:");
    debugPrint("passwordEnc -> password_enc");
    debugPrint("userRef -> user_ref");
    debugPrint("JSON keys: ${requestBody.keys.toList()}");
    debugPrint("password_enc value: ${requestBody['password_enc']}");
    debugPrint("user_ref value: ${requestBody['user_ref']}");
    
    final response = await client.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(requestBody),
    );
    
    debugPrint("______________SAVE PASSCODE RESPONSE____________");
    debugPrint("Response Status Code: ${response.statusCode}");
    debugPrint("Response Body: ${response.body}");
    final responseData = jsonDecode(response.body);
    final message = responseData['message'];
    debugPrint("RESPONSE STATUS CODE: ${response.statusCode}");
    try {
      if (response.statusCode == 200) {
        if (responseData['code'] == ApiResponseCode.success.value) {
          return SavePasscodeResponseModel.fromJson(jsonDecode(response.body));
        } else {
          throw Exception(message);
        }
      } else if (response.statusCode == 503) {
        throw ServerException(message: message);
      } else {
        throw Exception(message);
      }
    } on SocketException catch (e) {
      throw ServerException(message: e.message);
    }
  }

  @override
  Future<RegistrationModel> completeRegistration(String userRef) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    final String url =
        "${ApiConfig.epurseUrl}/registration/complete";

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
      body: jsonEncode({'user_ref': userRef}),
    );
    debugPrint("______________COMPLETE REGISTRATION REQUEST____________");
    debugPrint("request: $userRef");
    debugPrint("______________COMPLETE REGISTRATION RESPONSE____________");
    debugPrint("response: ${response.body}");
    final responseData = jsonDecode(response.body);
    final message = responseData['message'];
    debugPrint("RESPONSE STATUS CODE: ${response.statusCode}");
    debugPrint("RESPONSE DATA: $responseData");
    try {
      if (response.statusCode == 200) {
        if (responseData['code'] == ApiResponseCode.success.value) {
          // New API response structure: data is nil, so we pass userRef from request
          final responseWithUserRef = <String, dynamic>{
            ...responseData,
            'user_ref': userRef, // Add userRef from the request since it's not in response
          };
          return RegistrationModel.fromJson(responseWithUserRef);
        } else {
          throw Exception(message);
        }
      } else if (response.statusCode == 503 || response.statusCode == 502) {
        throw ServerDownException(message: message);
      } else {
        throw Exception(message);
      }
    } on SocketException catch (e) {
      throw ServerDownException(message: e.message);
    }
  }
}
