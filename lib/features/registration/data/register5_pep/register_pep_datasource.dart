import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'models/register_pep_model.dart';

abstract class RegisterPepRemoteDataSource {
  Future<RegisterPepResponseModel> registerPep(
      RegisterPepRequestModel pepRequest);
}

class RegisterPepRemoteDataSourceImpl implements RegisterPepRemoteDataSource {
  final http.Client client;

  RegisterPepRemoteDataSourceImpl({required this.client});

  @override
  Future<RegisterPepResponseModel> registerPep(
      RegisterPepRequestModel pepRequest) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    final String url = "${ApiConfig.epurseUrl}/registration/pep";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };

    debugPrint("______________REGISTER PEP REQUEST____________");
    final flattenedRequest = pepRequest.toFlattenedJson();
    debugPrint("request: $flattenedRequest");
    final response = await client.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(flattenedRequest),
    );

    final responseData = jsonDecode(response.body);
    final message = responseData['message'];
    debugPrint("______________REGISTER PEP RESPONSE____________");
    debugPrint("response: $responseData");
    if (response.statusCode == 200) {
      if (responseData['code'] == ApiResponseCode.success.value) {
        return RegisterPepResponseModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception(message);
      }
    } else if (response.statusCode == 503) {
      throw ServerException(message: message);
    } else {
      throw Exception(message);
    }
  }
}
