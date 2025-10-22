import 'dart:convert';

import 'package:epurse/core/api/api_config.dart';
import 'package:flutter/foundation.dart';

import '../../../../../core/errors/exception/exceptions.dart';
import '../../../../../core/storage/preferences_manager.dart';
import '../model/atm_locator_model.dart';
import 'package:http/http.dart' as http;
import 'package:epurse/core/token/refresh_token_handler.dart';

abstract class AtmRemoteDataSource {
  Future<List<AtmLocationModel>> getAtmLocations();
}

class AtmRemoteDataSourceImpl implements AtmRemoteDataSource {
  final http.Client client;
  final RefreshTokenHandler refreshTokenHandler;

  AtmRemoteDataSourceImpl({
    required this.client,
    required this.refreshTokenHandler,
  });

  @override
  Future<List<AtmLocationModel>> getAtmLocations() async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    String? token = preferencesManager.jwtToken;
    debugPrint("_______________CALLING API______________");

    final response = await refreshTokenHandler.handleApiCall(() => client.get(
          Uri.parse('${ApiConfig.epurseUrl}/masters/atm_locator'),
          headers: {
            'Content-Type': 'application/json',
            'DeviceInfo': deviceInfo.toString(),
            'Authorization': 'Bearer $token',
          },
        ));

    debugPrint(response.body);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      if (jsonResponse['status'] == 'Success') {
        return (jsonResponse['data'] as List)
            .map((atmJson) => AtmLocationModel.fromJson(atmJson))
            .toList();
      } else {
        throw ServerException(
            message: jsonResponse['message'] ?? 'Unknown error');
      }
    } else {
      throw ServerException(message: 'Failed to load ATM locations');
    }
  }
}
