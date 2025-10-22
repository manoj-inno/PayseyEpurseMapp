import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'register_business_details_model.dart';

abstract class RegisterBusinessRemoteDataSource {
  Future<RegisterBusinessResponseModel> registerBusiness(
      RegisterBusinessRequestModel request);
}

class RegisterBusinessRemoteDataSourceImpl
    implements RegisterBusinessRemoteDataSource {
  final http.Client client;

  RegisterBusinessRemoteDataSourceImpl({required this.client});

  @override
  Future<RegisterBusinessResponseModel> registerBusiness(
      RegisterBusinessRequestModel request) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    final String url = "${ApiConfig.epurseUrl}/registration/business";

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
      body: jsonEncode(request.toJson()),
    );
    debugPrint("______________REGISTER BUSINESS REQUEST____________");
    debugPrint("request: ${request.toJson()}");
    debugPrint("______________REGISTER BUSINESS RESPONSE____________");
    debugPrint("response: ${response.body}");
    final responseData = jsonDecode(response.body);
    final message = responseData['message'];
    debugPrint("RESPONSE STATUS CODE: ${response.statusCode}");
    debugPrint("RESPONSE DATA: $responseData");

    if (response.statusCode == 200) {
      if (responseData['code'] == ApiResponseCode.success.value) {
        return RegisterBusinessResponseModel.fromJson(
            jsonDecode(response.body));
      } else {
        throw ServerException(
            message: message, statusCode: response.statusCode);
      }
    } else if (response.statusCode == 503 || response.statusCode == 502) {
      throw ServerDownException(
          message: message, statusCode: response.statusCode);
    } else {
      throw ServerException(message: message, statusCode: response.statusCode);
    }
  }
}
