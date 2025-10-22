import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/token/refresh_token_handler.dart';
import 'transaction_transfer_model.dart';

abstract class TransactionTransferDataSource {
  Future<TransactionTransferResponseModel> transferMoney(
    TransactionTransferRequestModel request,
  );
}

class TransactionTransferDataSourceImpl implements TransactionTransferDataSource {
  final http.Client client;
  final RefreshTokenHandler refreshTokenHandler;

  TransactionTransferDataSourceImpl({
    required this.client,
    required this.refreshTokenHandler,
  });

  @override
  Future<TransactionTransferResponseModel> transferMoney(
    TransactionTransferRequestModel request,
  ) async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    String? token = preferencesManager.jwtToken;

    debugPrint("_______________TRANSACTION TRANSFER API CALL______________");
    debugPrint("Request: ${request.toJson()}");

    http.Response response;

    // If authFilePath present, send multipart/form-data with file under 'auth_data'
    if (request.authFilePath != null && request.authFilePath!.isNotEmpty) {
      final uri = Uri.parse('${ApiConfig.epurseUrl}/transaction/transfer');
      final req = http.MultipartRequest('POST', uri);
      req.headers.addAll({
        'DeviceInfo': deviceInfo.toString(),
        'Authorization': 'Bearer $token',
      });
      req.fields['receiver_id'] = request.receiverId.toString();
      req.fields['amount'] = request.amount.toString();
      if (request.remarks != null) req.fields['remarks'] = request.remarks!;
      final file = await http.MultipartFile.fromPath('auth_data', request.authFilePath!);
      req.files.add(file);
      // send without refresh wrapper (wrapper expects Response). We can use token already refreshed in flow.
      final streamed = await req.send();
      response = await http.Response.fromStream(streamed);
    } else {
      // JSON body (includes auth_data if provided for Transaction Pin)
      response = await refreshTokenHandler.handleApiCall(() => client.post(
            Uri.parse('${ApiConfig.epurseUrl}/transaction/transfer'),
            headers: {
              'Content-Type': 'application/json',
              'DeviceInfo': deviceInfo.toString(),
              'Authorization': 'Bearer $token',
            },
            body: jsonEncode(request.toJson()),
          ));
    }

    debugPrint("Response Status: ${response.statusCode}");
    debugPrint("Response Body: ${response.body}");

    // Parse response regardless of status code
    final jsonResponse = json.decode(response.body);
    final responseModel = TransactionTransferResponseModel.fromJson(jsonResponse);
    
    // If status code is not 200, log the error but still return the response
    if (response.statusCode != 200) {
      debugPrint("⚠️ API returned error status: ${response.statusCode}");
      debugPrint("⚠️ Error message: ${responseModel.message}");
    }
    
    return responseModel;
  }
}
