import 'dart:convert';

import 'package:epurse/core/errors/exception/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'register_mode_of_op_model.dart';

abstract class RegisterModeOfOperationRemoteDataSource {
  Future<ModeOfOperationResponseModel> registerModeOfOperation(
      ModeOfOperationRequestModel requestModel);
}

class RegisterModeOfOperationRemoteDataSourceImpl
    implements RegisterModeOfOperationRemoteDataSource {
  final http.Client client;

  RegisterModeOfOperationRemoteDataSourceImpl({required this.client});

  @override
  Future<ModeOfOperationResponseModel> registerModeOfOperation(
      ModeOfOperationRequestModel requestModel) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    final String url = "${ApiConfig.epurseUrl}/registration/modeop";

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };
    debugPrint("----------------REGISTER MODE OF OPERATION----------------");
    debugPrint(requestModel.toJson().toString());
    final response = await client.post(
      Uri.parse(url),
      body: jsonEncode(requestModel.toJson()),
      headers: headers,
    );
    final responseData = jsonDecode(response.body);
    final message = responseData['message'];
    debugPrint(
        "----------------REGISTER MODE OF OPERATION RESPONSE----------------");
    debugPrint(responseData.toString());

    if (response.statusCode == 200) {
      if (responseData['code'] == ApiResponseCode.success.value) {
        return ModeOfOperationResponseModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerDownException(message: message);
      }
    } else {
      throw ServerDownException(message: message);
    }
  }
}
