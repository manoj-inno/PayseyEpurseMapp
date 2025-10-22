import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/token/refresh_token_handler.dart';
import 'transaction_list_model.dart';

abstract class TransactionListDataSource {
  Future<TransactionListResponseModel> getTransactionList(
    TransactionListRequestModel request,
  );
}

class TransactionListDataSourceImpl implements TransactionListDataSource {
  final http.Client client;
  final RefreshTokenHandler refreshTokenHandler;

  TransactionListDataSourceImpl({
    required this.client,
    required this.refreshTokenHandler,
  });

  @override
  Future<TransactionListResponseModel> getTransactionList(
    TransactionListRequestModel request,
  ) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    String? token = preferencesManager.jwtToken;

    debugPrint("_______________TRANSACTION LIST API CALL______________");
    debugPrint("Epurse URL: ${ApiConfig.epurseUrl}");
    debugPrint("Full URL: ${ApiConfig.epurseUrl}/transaction/list");
    debugPrint("Request: ${request.toJson()}");

    final response = await refreshTokenHandler.handleApiCall(() => client.post(
          Uri.parse('${ApiConfig.epurseUrl}/transaction/list'),
          headers: {
            'Content-Type': 'application/json',
            'DeviceInfo': deviceInfo.toString(),
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode(request.toJson()),
        ));

    debugPrint("Response Status: ${response.statusCode}");
    debugPrint("Response Body: ${response.body}");

    // Parse response regardless of status code
    final jsonResponse = json.decode(response.body);
    final responseModel = TransactionListResponseModel.fromJson(jsonResponse);
    
    // If status code is not 200, log the error but still return the response
    if (response.statusCode != 200) {
      debugPrint("⚠️ API returned error status: ${response.statusCode}");
      debugPrint("⚠️ Error message: ${responseModel.message}");
    }
    
    return responseModel;
  }
}
