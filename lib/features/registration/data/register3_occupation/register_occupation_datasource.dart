import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'models/register_occupation_model.dart';

abstract class RegisterOccupationRemoteDataSource {
  Future<RegisterOccupationResponseModel> registerOccupation(
      RegisterOccupationModel occupation);
}

class RegisterOccupationRemoteDataSourceImpl
    implements RegisterOccupationRemoteDataSource {
  final http.Client client;

  RegisterOccupationRemoteDataSourceImpl({required this.client});

  @override
  Future<RegisterOccupationResponseModel> registerOccupation(
      RegisterOccupationModel occupation) async {
    try {
      PreferencesManager preferencesManager =
          await PreferencesManager.getInstance();
      String? deviceInfo = preferencesManager.deviceInfo;
      final String url =
          "${ApiConfig.epurseUrl}/registration/occupation";

      debugPrint("______________API URL____________");
      debugPrint("URL: $url");

      String basicAuth =
          'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
      Map<String, String> headers = {
        'Authorization': basicAuth,
        'Content-Type': ApiConfig.contentType,
        'DeviceInfo': deviceInfo.toString()
      };

      debugPrint("______________REQUEST HEADERS____________");
      debugPrint("Headers: ${headers.toString()}");

      // Build the payload with proper null checking
      final payload = occupation.toJson();

      debugPrint("______________REGISTER OCCUPATION REQUEST____________");
      debugPrint("Request payload: $payload");

      // Encode to JSON with error checking
      String jsonBody;
      try {
        jsonBody = jsonEncode(payload);
        debugPrint("JSON body (encoded): $jsonBody");
      } catch (e) {
        debugPrint("______________JSON ENCODE ERROR____________");
        debugPrint("Error encoding JSON: $e");
        throw ServerException(message: "Error encoding request: $e");
      }

      // Log the actual HTTP request
      debugPrint("______________SENDING HTTP REQUEST____________");

      // Set a timeout for the request
      http.Response response;
      try {
        response = await client
            .post(
          Uri.parse(url),
          headers: headers,
          body: jsonBody,
        )
            .timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            debugPrint("______________REQUEST TIMEOUT____________");
            throw Exception("Request timed out after 30 seconds");
          },
        );

        debugPrint("______________RECEIVED HTTP RESPONSE____________");
        debugPrint("Status code: ${response.statusCode}");
        debugPrint("Headers: ${response.headers}");
        debugPrint("Response body length: ${response.body.length}");
        debugPrint(
            "Response body (truncated): ${response.body.length > 100 ? '${response.body.substring(0, 100)}...' : response.body}");
      } catch (e) {
        debugPrint("______________HTTP REQUEST ERROR____________");
        debugPrint("Error during HTTP request: $e");
        throw ServerException(
            message: "Network error during request: $e", statusCode: 0);
      }

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        debugPrint("______________503 SERVICE UNAVAILABLE____________");
        throw ServerException(
            message: "Server is currently unavailable", statusCode: 503);
      }

      // Check for empty response
      if (response.body.isEmpty) {
        debugPrint("______________EMPTY RESPONSE BODY____________");
        debugPrint("Status code with empty body: ${response.statusCode}");
        debugPrint("Response headers with empty body: ${response.headers}");

        throw ServerException(
            message:
                "Server returned an empty response. This might indicate a server-side issue.",
            statusCode: response.statusCode);
      }

      // Try to decode the response
      Map<String, dynamic> responseData;
      try {
        responseData = jsonDecode(response.body);
        debugPrint("______________DECODED JSON RESPONSE____________");
        debugPrint("Response data: $responseData");
      } catch (e) {
        debugPrint("______________JSON DECODE ERROR____________");
        debugPrint("Error decoding response: $e");
        debugPrint("Invalid JSON response: ${response.body}");
        throw ServerException(
            message: "Server returned an invalid response format: $e",
            statusCode: response.statusCode);
      }

      final message = responseData['message'] ?? 'Unknown error';

      if (response.statusCode == 200) {
        try {
          if (responseData['code'] == ApiResponseCode.success.value) {
            debugPrint("______________SUCCESS RESPONSE____________");
            final result =
                RegisterOccupationResponseModel.fromJson(responseData);
            debugPrint("Parsed response model: $result");
            return result;
          } else {
            debugPrint("______________API ERROR RESPONSE____________");
            debugPrint("API Error: $message");
            throw ServerException(message: message);
          }
        } catch (e) {
          debugPrint("______________MODEL PARSING ERROR____________");
          debugPrint("Error parsing response model: $e");
          throw ServerException(message: "Error parsing server response: $e");
        }
      } else {
        debugPrint("______________HTTP ERROR RESPONSE____________");
        debugPrint("HTTP Error: ${response.statusCode} - $message");
        throw NetworkException(message: message);
      }
    } on FormatException catch (e) {
      debugPrint("______________FORMAT EXCEPTION____________");
      debugPrint("Format exception: $e");
      throw ServerException(message: 'Invalid data format: ${e.message}');
    } on ServerException {
      rethrow;
    } on NetworkException {
      rethrow;
    } catch (e) {
      debugPrint("______________UNHANDLED EXCEPTION____________");
      debugPrint("Error registering occupation: $e");
      if (e.toString().contains('SocketException') ||
          e.toString().contains('Connection refused') ||
          e.toString().contains('ClientException') ||
          e.toString().contains('Connection timed out')) {
        throw ServerException(
            message: 'Server is currently unavailable. Please try again later.',
            statusCode: 503);
      }
      throw ServerException(message: 'Error registering occupation: $e');
    }
  }
}
