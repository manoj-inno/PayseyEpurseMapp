import 'dart:convert';
import 'package:epurse/core/api/api_config.dart';
import 'package:epurse/core/errors/exception/exceptions.dart';
import 'package:epurse/core/util/api_response_code.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../../core/storage/preferences_manager.dart';
import '../../../../../core/token/refresh_token_handler.dart';
import '../model/remote_beneficiary_model.dart';

abstract class BeneficiaryRemoteDataSource {
  Future<CheckBeneficiaryResponse> checkBeneficiary(
      CheckBeneficiaryRequest request);
}

class BeneficiaryRemoteDataSourceImpl implements BeneficiaryRemoteDataSource {
  final http.Client client;
  final RefreshTokenHandler refreshTokenHandler;

  BeneficiaryRemoteDataSourceImpl({
    required this.client,
    required this.refreshTokenHandler,
  });

  @override
  Future<CheckBeneficiaryResponse> checkBeneficiary(
      CheckBeneficiaryRequest request) async {
    try {
      PreferencesManager preferencesManager =
          await PreferencesManager.getInstance();
      String? deviceInfo = preferencesManager.deviceInfo;
      String? jwtToken = preferencesManager.jwtToken;

      // Check if JWT token is available
      if (jwtToken == null || jwtToken.isEmpty) {
        debugPrint("❌ JWT Token is null or empty!");
        debugPrint("❌ Available user info: ${preferencesManager.getUserInfo()}");
        throw ServerException(message: "Authentication token not available. Please login again.");
      }

      debugPrint("✅ JWT Token is available, length: ${jwtToken.length}");

      final response =
          await refreshTokenHandler.handleApiCall(() => client.post(
                Uri.parse(
                    "${ApiConfig.epurseUrl}/beneficiary/check_beneficiary_list"),
                headers: {
                  'Authorization': 'Bearer $jwtToken',
                  'Content-Type': ApiConfig.contentType,
                  'DeviceInfo': deviceInfo.toString()
                },
                body: jsonEncode(request.toJson()),
              ));

      debugPrint(
          "_______________TOKEN USED IN CHECK BENEFICIARY______________");
      debugPrint("JWT Token: '$jwtToken'");
      debugPrint("JWT Token Length: ${jwtToken.length}");
      debugPrint("Authorization Header: 'Bearer $jwtToken'");
      debugPrint("__________CHECK BENEFICIARY RESPONSE____________");
      debugPrint(response.body);
      final jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        if (jsonResponse['code'] == ApiResponseCode.success.value) {
          return CheckBeneficiaryResponse.fromJson({
            ...jsonResponse['data'],
            'message': jsonResponse['message'],
            'status': jsonResponse['status'],
          });
        } else if (jsonResponse['code'] == ApiResponseCode.error.value && 
                   jsonResponse['message'] == 'Beneficiaries not found') {
          // Treat "Beneficiaries not found" as a successful response with empty data
          debugPrint("✅ No beneficiaries found - treating as success");
          return CheckBeneficiaryResponse.fromJson({
            'beneficiaries': [], // Empty list of beneficiaries
            'message': jsonResponse['message'],
            'status': jsonResponse['status'],
          });
        } else {
          throw Exception(jsonResponse['message']);
        }
      } else {
        throw ServerException(message: jsonResponse['message']);
      }
    } catch (e) {
      debugPrint("Error in checkBeneficiary: $e");
      throw ServerDownException(message: "Failed to check beneficiary: $e");
    }
  }
}
