import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../storage/preferences_manager.dart';
import './data/refresh_token_datasource.dart';
import '../errors/exception/exceptions.dart';

class RefreshTokenHandler {
  final RefreshTokenDataSource refreshTokenDataSource;
  bool _isRefreshing = false;

  RefreshTokenHandler({
    required this.refreshTokenDataSource,
  });

  Future<http.Response> handleApiCall(Future<http.Response> Function() apiCall,
      {bool isRetry = false}) async {
    try {
      final response = await apiCall();

      if (response.statusCode == 403 ||
          response.statusCode == 401 && !isRetry && !_isRefreshing) {
        // Token expired, attempt refresh and retry once
        return await _refreshAndRetry(apiCall);
      }

      return response;
    } catch (e) {
      throw ServerDownException(message: 'API call failed: $e');
    }
  }

  Future<http.Response> _refreshAndRetry(
      Future<http.Response> Function() apiCall) async {
    try {
      if (_isRefreshing) {
        throw ServerException(message: 'Token refresh already in progress');
      }

      _isRefreshing = true;

      final preferencesManager = await PreferencesManager.getInstance();
      final newToken = preferencesManager.jwtToken;
      final deviceInfo = preferencesManager.deviceInfo;

      debugPrint("_______________TOKEN BEFORE REFRESH____________");
      debugPrint(newToken);

      if (newToken == null || deviceInfo == null) {
        throw ServerException(
            message: 'No refresh token or device info available');
      }

      final refreshResult = await refreshTokenDataSource.refreshToken(
        newToken,
        deviceInfo,
      );

      debugPrint(
          "_______________NEW JWT TOKEN AFTER REFRESH ON HANDLER____________");
      debugPrint(refreshResult.accessToken);

      // Save new tokens
      await preferencesManager.setJWTToken(refreshResult.accessToken);

      debugPrint(
          "_______________NEW JWT TOKEN SAVED IN PREFERENCES____________");
      String? newPrefToken = preferencesManager.jwtToken;
      debugPrint(newPrefToken);

      // Retry original API call with new token
      return await handleApiCall(apiCall, isRetry: true);
    } catch (e) {
      throw ServerDownException(message: 'Token refresh failed: $e');
    } finally {
      _isRefreshing = false;
    }
  }
}
