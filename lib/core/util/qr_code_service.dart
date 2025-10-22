import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'encryption_util.dart';

class QRCodeService {
  static const MethodChannel _channel = MethodChannel('innovitegra.epurse.ewallet/qr_generator');

  /// Test method to verify the method channel is working
  static Future<bool> testChannel() async {
    try {
      await _channel.invokeMethod('test');
      return true;
    } catch (e) {
      debugPrint('Channel test failed: $e');
      return false;
    }
  }

  /// Generates QR code from encrypted data
  /// Returns Uint8List of PNG image data
  static Future<Uint8List?> generateQRCode({
    required String encryptedData,
    int size = 512,
    String? userId,
    String? name,
  }) async {
    try {
      debugPrint('Generating QR code with data length: ${encryptedData.length}');
      debugPrint('Platform: ${Platform.isIOS ? 'iOS' : Platform.isAndroid ? 'Android' : 'Unknown'}');
      
      final result = await _channel.invokeMethod('generateQRCode', {
        'data': encryptedData,
        'size': size,
        'userId': userId,
        'name': name,
      });

      if (result is Uint8List) {
        debugPrint('QR code generated successfully, size: ${result.length} bytes');
        return result;
      } else {
        debugPrint('Invalid result type: ${result.runtimeType}');
        return null;
      }
    } on PlatformException catch (e) {
      debugPrint('QR generation PlatformException: ${e.code} - ${e.message}');
      debugPrint('Details: ${e.details}');
      return null;
    } catch (e) {
      debugPrint('Unknown error generating QR code: $e');
      return null;
    }
  }

  /// Generates QR code from user data (encrypts automatically)
  static Future<Uint8List?> generateUserQRCode({
    required String userName,
    required String userId,
    required String userPhone,
    int size = 512,
  }) async {
    try {
      final encryptedData = EncryptionUtil.encryptUserData(userName, userId, userPhone);
      
      return await generateQRCode(
        encryptedData: encryptedData,
        size: size,
        userId: userId,
        name: userName,
      );
    } catch (e) {
      debugPrint('Error generating user QR code: $e');
      return null;
    }
  }
}
