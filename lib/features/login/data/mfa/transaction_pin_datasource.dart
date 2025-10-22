import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';

abstract class TransactionPinDataSource {
  Future<void> setTransactionPin({required String encryptedPin, required String encryptedConfirmPin, required String encryptedPasscode});
}

class TransactionPinDataSourceImpl implements TransactionPinDataSource {
  final http.Client client;
  TransactionPinDataSourceImpl({required this.client});

  @override
  Future<void> setTransactionPin({required String encryptedPin, required String encryptedConfirmPin, required String encryptedPasscode}) async {
    final prefs = await PreferencesManager.getInstance();
    final token = prefs.jwtToken ?? '';
    final deviceInfo = prefs.deviceInfo?.toString() ?? '';
    final url = "${ApiConfig.epurseUrl}/transaction/pin/set";
    final body = jsonEncode({
      "pin": encryptedPin,
      "confirm_pin": encryptedConfirmPin,
      "passcode": encryptedPasscode,
    });
    final res = await client.post(Uri.parse(url), headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo,
    }, body: body);
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    if (!(res.statusCode == 200 && (data['code'] == 1 || data['status'] == 'Success'))) {
      throw Exception(data['message'] ?? 'Failed to set transaction PIN');
    }
  }
}


