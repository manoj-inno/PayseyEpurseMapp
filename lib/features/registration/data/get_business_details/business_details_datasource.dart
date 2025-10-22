import 'dart:convert';
import 'package:epurse/core/errors/exception/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';
import 'models/business_type_model.dart';
import 'models/mode_of_operation_model.dart';
import 'models/turnover_model.dart';

abstract class BusinessDetailsDataSource {
  Future<List<BusinessTypeModel>> getBusinessList();
  Future<List<ModeOfOperationModel>> getModeOfOperations();
  Future<List<TurnoverModel>> fetchTurnovers();
}

class BusinessDetailsDataSourceImpl implements BusinessDetailsDataSource {
  final http.Client client;

  BusinessDetailsDataSourceImpl({required this.client});

  @override
  Future<List<BusinessTypeModel>> getBusinessList() async {
    final response = await client
        .get(Uri.parse('${ApiConfig.masterUrl}/masters/get_business'));

    try {
      debugPrint('---------------GETTING BUSINESS LIST-----------------');
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> businessList = data['business_array'];
        return businessList
            .map((json) => BusinessTypeModel.fromJson(json))
            .toList();
      } else {
        throw ServerDownException(message: 'Failed to load business list');
      }
    } catch (e) {
      throw Exception('Failed to load business list: $e');
    }
  }

  @override
  Future<List<ModeOfOperationModel>> getModeOfOperations() async {
    final response = await client
        .get(Uri.parse('${ApiConfig.masterUrl}/masters/get_mode_op'));

    debugPrint('url: ${ApiConfig.masterUrl}/masters/get_mode_op');

    try {
      debugPrint('---------------GETTING MODE OF OPERATIONS-----------------');
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> modeOfOperationList =
            data['mode_of_operation_array'];
        return modeOfOperationList
            .map((json) => ModeOfOperationModel.fromJson(json))
            .toList();
      } else {
        throw ServerDownException(
            message: 'Failed to load mode of operation list');
      }
    } catch (e) {
      throw Exception('Failed to load mode of operation list: $e');
    }
  }

  @override
  Future<List<TurnoverModel>> fetchTurnovers() async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;

    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };
    try {
      final response = await client.get(
          Uri.parse('${ApiConfig.masterUrl}/masters/get_turnover'),
          headers: headers);
      debugPrint('---------------GETTING TURNOVERS-----------------');
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> turnoverList = data['data'];
        return turnoverList
            .map((json) => TurnoverModel.fromJson(json))
            .toList();
      } else {
        throw ServerDownException(message: 'Failed to load turnover list');
      }
    } catch (e) {
      throw Exception('Failed to load turnover list: $e');
    }
  }
}
