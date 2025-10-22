import 'dart:convert';
import 'dart:io';

import 'package:epurse/core/errors/exception/exceptions.dart';
import 'package:epurse/features/registration/data/get_occupation_details/models/source_fund_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../../core/api/api_config.dart';
import 'models/occupation_model.dart';

abstract class GetOccupationDetailsDataSource {
  Future<List<OccupationModel>> getOccupationDetails();
  Future<List<SourceFundModel>> getSourceFundDetails();
}

class GetOccupationDetailsDataSourceImpl
    implements GetOccupationDetailsDataSource {
  final http.Client client;

  GetOccupationDetailsDataSourceImpl({required this.client});

  @override
  Future<List<OccupationModel>> getOccupationDetails() async {
    final String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    try {
      final response = await client.get(
          Uri.parse('${ApiConfig.masterUrl}/masters/get_occupation'),
          headers: {'Authorization': basicAuth});

      // Debug the response
      debugPrint("Occupation API Response Status: ${response.statusCode}");
      debugPrint("Occupation API Response Body: ${response.body}");

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw ServerException(
            message: "Server is currently unavailable", statusCode: 503);
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        if (jsonResponse.containsKey('occupation_array')) {
          final List<dynamic> data = jsonResponse['occupation_array'];
          debugPrint("Occupation array length: ${data.length}");
          return data.map((item) => OccupationModel.fromJson(item)).toList();
        } else {
          debugPrint("Missing 'occupation_array' in response");
          return []; // Return empty list instead of throwing an exception
        }
      } else {
        throw ServerException(
            message: 'Failed to load Occupations',
            statusCode: response.statusCode);
      }
    } on FormatException catch (e) {
      debugPrint("JSON parsing error: ${e.toString()}");
      return []; // Return empty list for JSON parsing errors
    } on SocketException catch (e) {
      throw ServerException(
          message: 'Network connection issue: ${e.message}', statusCode: 503);
    } on http.ClientException catch (e) {
      throw ServerException(
          message: 'HTTP client error: ${e.message}', statusCode: 503);
    } on ServerException {
      rethrow;
    } catch (e) {
      debugPrint("Unexpected error in getOccupationDetails: ${e.toString()}");
      if (e.toString().contains('SocketException') ||
          e.toString().contains('Connection refused') ||
          e.toString().contains('ClientException') ||
          e.toString().contains('Connection timed out')) {
        throw ServerException(
            message: 'Server is currently unavailable. Please try again later.',
            statusCode: 503);
      }
      throw ServerException(
          message: 'Error fetching occupations: ${e.toString()}');
    }
  }

  @override
  Future<List<SourceFundModel>> getSourceFundDetails() async {
    final String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    try {
      final response = await client.get(
          Uri.parse('${ApiConfig.masterUrl}/masters/get_rc_fund'),
          headers: {'Authorization': basicAuth});

      // Debug the response
      debugPrint("Source Fund API Response Status: ${response.statusCode}");
      debugPrint("Source Fund API Response Body: ${response.body}");

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw ServerException(
            message: "Server is currently unavailable", statusCode: 503);
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        if (jsonResponse.containsKey('srcfund_array')) {
          final List<dynamic> sourceFunds = jsonResponse['srcfund_array'];
          debugPrint("Source fund array length: ${sourceFunds.length}");
          return sourceFunds
              .map((json) => SourceFundModel.fromJson(json))
              .toList();
        } else {
          debugPrint("Missing 'srcfund_array' in response");
          return []; // Return empty list instead of throwing an exception
        }
      } else {
        throw ServerException(
            message: 'Failed to load Source Fund',
            statusCode: response.statusCode);
      }
    } on FormatException catch (e) {
      debugPrint("JSON parsing error: ${e.toString()}");
      return []; // Return empty list for JSON parsing errors
    } on SocketException catch (e) {
      throw ServerException(
          message: 'Network connection issue: ${e.message}', statusCode: 503);
    } on http.ClientException catch (e) {
      throw ServerException(
          message: 'HTTP client error: ${e.message}', statusCode: 503);
    } on ServerException {
      rethrow;
    } catch (e) {
      debugPrint("Unexpected error in getSourceFundDetails: ${e.toString()}");
      if (e.toString().contains('SocketException') ||
          e.toString().contains('Connection refused') ||
          e.toString().contains('ClientException') ||
          e.toString().contains('Connection timed out')) {
        throw ServerException(
            message: 'Server is currently unavailable. Please try again later.',
            statusCode: 503);
      }
      throw ServerException(
          message: 'Error fetching source funds: ${e.toString()}');
    }
  }
}
