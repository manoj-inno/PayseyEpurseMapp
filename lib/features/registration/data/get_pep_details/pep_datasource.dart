import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';
import 'models/pep_model.dart';
import 'models/pep_type_model.dart';
import 'models/relation_model.dart';

abstract class PoliticallyExposedDataSource {
  Future<List<PepModel>> getPepOptions();
  Future<List<RelationshipModel>> getRelationships();
  Future<List<PepTypeModel>> getPepTypes();
}

class PoliticallyExposedDataSourceImpl implements PoliticallyExposedDataSource {
  final http.Client client;

  PoliticallyExposedDataSourceImpl({required this.client});

  @override
  Future<List<PepModel>> getPepOptions() async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    final response = await client.post(
      Uri.parse('${ApiConfig.masterUrl}/masters/get_pep'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': basicAuth,
        'Deviceid': deviceInfo.toString(),
      },
    );
    log('______________GET PEP RESPONSE____________');
    log(response.body);
    if (response.statusCode == 200) {
      final List<dynamic> body = json.decode(response.body)['pep_array'];
      return body.map((json) => PepModel.fromJson(json)).toList();
    } else {
      throw 'Failed to load PEP types';
    }
  }

  @override
  Future<List<RelationshipModel>> getRelationships() async {
    final response = await client
        .get(Uri.parse('${ApiConfig.masterUrl}/masters/get_relationship'));
    debugPrint(response.body);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> relationsJson = data['relation_array'];
      return relationsJson
          .map((json) => RelationshipModel.fromJson(json))
          .toList();
    } else {
      throw 'Failed to load Relationships';
    }
  }

  @override
  Future<List<PepTypeModel>> getPepTypes() async {
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    final response = await client.get(
      Uri.parse('${ApiConfig.masterUrl}/masters/get_pep_type'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': basicAuth,
        'Deviceid': deviceInfo.toString(),
      },
    );
    log('______________GET PEP TYPES RESPONSE____________');
    log(response.body);
    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);
      return List<PepTypeModel>.from(
          decoded['data'].map((x) => PepTypeModel.fromJson(x)));
    } else {
      throw Exception("Failed to load PEP Types");
    }
  }
}
