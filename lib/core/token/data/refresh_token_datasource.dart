import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../errors/exception/exceptions.dart';
import '../../api/api_config.dart';
import 'refresh_token_model.dart';

abstract class RefreshTokenDataSource {
  Future<RefreshTokenModel> refreshToken(
      String refreshToken, String deviceInfo);
}

class RefreshTokenDataSourceImpl implements RefreshTokenDataSource {
  final http.Client client;

  RefreshTokenDataSourceImpl({required this.client});

  @override
  Future<RefreshTokenModel> refreshToken(
      String refreshToken, String deviceInfo) async {
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    try {
      final response = await client.post(
          Uri.parse('${ApiConfig.epurseUrl}/login/refresh_token'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': basicAuth,
            'DeviceInfo': deviceInfo,
          },
          body: jsonEncode({"auth_token": refreshToken}));
      debugPrint("_______________REFRESH TOKEN RESPONSE____________");
      debugPrint(response.body);
      final jsonResponse = json.decode(response.body);
      debugPrint("_______________NEW TOKEN AFTER REFRESH____________");
      debugPrint(jsonResponse['data']['refresh_token']);

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == 'Success') {
          return RefreshTokenModel.fromJson(jsonResponse['data']);
        } else {
          throw ServerDownException(
              message: jsonResponse['message'] ?? 'Unknown error');
        }
      } else {
        throw ServerDownException(message: 'Failed to refresh token');
      }
    } catch (e) {
      throw ServerException(message: 'Error refreshing token: $e');
    }
  }
}
