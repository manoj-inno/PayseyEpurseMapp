import 'dart:convert';
import 'package:epurse/core/util/api_response_code.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import 'login_model.dart';

abstract class LoginDataSource {
  Future<LoginResponseModel> login(LoginRequestModel request);
}

class LoginDataSourceImpl implements LoginDataSource {
  final http.Client client;

  LoginDataSourceImpl({required this.client});

  @override
  Future<LoginResponseModel> login(LoginRequestModel request) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;

    final String url = "${ApiConfig.epurseUrl}/user/login";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };
    debugPrint('-----------------LOGIN REQUEST---------------');
    debugPrint(request.toJson().toString());
    final response = await client.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(request.toJson()),
    );
    debugPrint('-----------------LOGIN RESPONSE---------------');
    debugPrint(response.body);
    final responseData = jsonDecode(response.body);
    debugPrint('-----------------PARSED RESPONSE DATA---------------');
    debugPrint('Response Data: $responseData');
    debugPrint('Response Status Code: ${response.statusCode}');
    debugPrint('Response Code: ${responseData['code']}');
    debugPrint('Success Code: ${ApiResponseCode.success.value}');
    
    if (response.statusCode == 200) {
      if (responseData['code'] == ApiResponseCode.success.value) {
        debugPrint('✅ Login successful, creating LoginResponseModel...');
        return LoginResponseModel.fromJson(responseData);
      } else {
        debugPrint('❌ Login failed with code: ${responseData['code']}');
        throw responseData['message'];
      }
    } else {
      debugPrint('❌ HTTP error: ${response.statusCode}');
      throw ServerException(message: responseData['message']);
    }
  }
}
