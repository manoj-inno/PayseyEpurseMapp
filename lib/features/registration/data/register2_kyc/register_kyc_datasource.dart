import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'models/register_kyc_model.dart';

abstract class RegisterKycRemoteDataSource {
  Future<RegisterKycResponseModel> registerKyc(RegisterKycRequestModel request);
}

class RegisterKycRemoteDataSourceImpl implements RegisterKycRemoteDataSource {
  final http.Client client;
  RegisterKycRemoteDataSourceImpl(this.client);

  @override
  Future<RegisterKycResponseModel> registerKyc(
      RegisterKycRequestModel request) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    final String url = "${ApiConfig.epurseUrl}/registration/kyc";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };

    debugPrint("______________REGISTER KYC REQUEST____________");
    debugPrint("request: ${request.toJson()}");

    final response = await client.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(request.toJson()),
    );

    final responseData = jsonDecode(response.body);
    final message = responseData['message'];
    debugPrint("______________REGISTER KYC RESPONSE____________");
    debugPrint("response: $responseData");

    if (response.statusCode == 200) {
      if (responseData['code'] == ApiResponseCode.success.value) {
        debugPrint("______________PARSING RESPONSE____________");
        debugPrint("Raw responseData: $responseData");
        
        // Parse the nested JSON manually to debug
        final parsedData = RegisterKycResponseModel.parseNestedJson(responseData);
        debugPrint("Parsed data: $parsedData");
        
        return RegisterKycResponseModel.fromJson(parsedData);
      } else {
        throw ServerException(message: message);
      }
    } else if (response.statusCode != 200) {
      throw ServerDownException(
          message: message, statusCode: response.statusCode);
    } else {
      throw NetworkException(message: message);
    }
  }
}
