import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';

class MfaOption {
  final int mfaId;
  final String name;
  final bool isDefault;
  const MfaOption({required this.mfaId, required this.name, required this.isDefault});
}

abstract class MfaDataSource {
  Future<List<MfaOption>> fetchMfaList();
  Future<void> setMfa(int authId);
}

class MfaDataSourceImpl implements MfaDataSource {
  final http.Client client;
  MfaDataSourceImpl({required this.client});

  Map<String, String> _headers(String token, String deviceInfo) => {
        'Authorization': 'Bearer $token',
        'Content-Type': ApiConfig.contentType,
        'DeviceInfo': deviceInfo,
      };

  @override
  Future<List<MfaOption>> fetchMfaList() async {
    final prefs = await PreferencesManager.getInstance();
    final token = prefs.jwtToken ?? '';
    final deviceInfo = prefs.deviceInfo?.toString() ?? '';
    final url = "${ApiConfig.epurseUrl}/mfa/list";
    debugPrint('GET $url');
    final res = await client.post(
      Uri.parse(url),
      headers: _headers(token, deviceInfo),
      body: jsonEncode({"institution_id": 1, "is_active": true}),
    );
    debugPrint('MFA LIST RESPONSE: ${res.body}');
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    if (res.statusCode == 200 && (data['code'] == 1 || data['status'] == 'Success')) {
      final List list = data['data'] as List? ?? [];
      return list
          .map((e) => MfaOption(
                mfaId: e['mfa_id'] as int,
                name: e['mfa_name']?.toString() ?? 'Unknown',
                isDefault: e['is_default'] == true,
              ))
          .toList();
    }
    throw Exception(data['message'] ?? 'Failed to load MFA list');
  }

  @override
  Future<void> setMfa(int authId) async {
    final prefs = await PreferencesManager.getInstance();
    final token = prefs.jwtToken ?? '';
    final deviceInfo = prefs.deviceInfo?.toString() ?? '';
    final url = "${ApiConfig.epurseUrl}/mfa/set";
    debugPrint('POST $url');
    final res = await client.post(
      Uri.parse(url),
      headers: _headers(token, deviceInfo),
      body: jsonEncode({"auth_id": authId}),
    );
    debugPrint('MFA SET RESPONSE: ${res.body}');
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    if (!(res.statusCode == 200 && (data['code'] == 1 || data['status'] == 'Success'))) {
      throw Exception(data['message'] ?? 'Failed to set MFA');
    }
  }
}


