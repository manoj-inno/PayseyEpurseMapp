import 'dart:convert';
import 'package:flutter/foundation.dart';
// removed unused import
import '../../../../core/util/crypto/wrapper_key_util.dart';
import '../../../../core/util/crypto/aes_gcm_util.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';

abstract class SessionKeyDataSource {
  Future<String> fetchSessionKey();
}

class SessionKeyDataSourceImpl implements SessionKeyDataSource {
  final http.Client client;

  SessionKeyDataSourceImpl({required this.client});

  @override
  Future<String> fetchSessionKey() async {
    final preferences = await PreferencesManager.getInstance();
    final token = preferences.jwtToken ?? '';
    final deviceInfo = preferences.deviceInfo?.toString() ?? '';

    final url = "${ApiConfig.epurseUrl}/session/key";
    debugPrint('-----------------SESSION KEY REQUEST---------------');
    debugPrint('GET $url');

    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': ApiConfig.contentType,
        'DeviceInfo': deviceInfo,
      },
    );

    debugPrint('-----------------SESSION KEY RESPONSE---------------');
    debugPrint(response.body);

    final jsonBody = jsonDecode(response.body) as Map<String, dynamic>;
    if (response.statusCode == 200 && (jsonBody['code'] == 1 || jsonBody['status'] == 'Success')) {
      final encryptedBase64 = jsonBody['data']?.toString() ?? '';
      await preferences.setEncryptedSessionKey(encryptedBase64);
      debugPrint('✅ Encrypted session key stored');

      // Build wrapper (decryption) key from userRef and userId
      final userRef = preferences.userRef ?? '';
      final userId = preferences.userId ?? '';
      final wrapperKey = WrapperKeyUtil.getWrapperKey(userRef, userId);
      debugPrint("wrapperKey: $wrapperKey");
      final keyBytes = WrapperKeyUtil.wrapperKeyToBytes(wrapperKey);

      debugPrint("keyBytes: ${keyBytes.toString()}");

      debugPrint("encryptedBase64: $encryptedBase64");

      // Decrypt AES-GCM encrypted session key
      try {
        // The server returns base64 of a base64 string: first decode to inner base64 text
        final innerBase64Text = utf8.decode(base64Decode(encryptedBase64));
        debugPrint('innerBase64Text (${innerBase64Text})');
        final decrypted = AesGcmUtil.decryptBase64(innerBase64Text, keyBytes);
        await preferences.setDecryptedSessionKey(decrypted);
        debugPrint('✅ Decrypted session key stored ( ${decrypted})');
      } catch (e) {
        debugPrint('❌ Failed to decrypt session key: $e');
      }
      return encryptedBase64;
    }

    throw Exception(jsonBody['message'] ?? 'Failed to fetch session key');
  }
}


