import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/foundation.dart';

class EncryptionUtil {
  static const String _secretKey = "12341234123412341234123412341234";
  
  /// Encrypts the given text using AES-256-CBC with 16-byte IV of all zeros
  static String encryptFunction(String text) {
    final key = utf8.encode(_secretKey);
    try {
      final encrypted = encryptAES256CBC(key, utf8.encode(text));
      return encrypted;
    } catch (e) {
      debugPrint("Encryption failed: $e");
      return e.toString();
    }
  }

  /// Decrypts the given hex string using AES-256-CBC with 16-byte IV of all zeros
  static String decryptFunction(String encryptedHex) {
    final key = utf8.encode(_secretKey);
    try {
      final decrypted = decryptAES256CBC(key, encryptedHex);
      return decrypted;
    } catch (e) {
      debugPrint("Decryption failed: $e");
      return e.toString();
    }
  }

  /// AES-256-CBC encryption implementation
  static String encryptAES256CBC(List<int> key, List<int> plaintext) {
    if (key.length != 32) {
      throw Exception('Key must be 32 bytes long');
    }
    
    final aesKey = encrypt.Key(Uint8List.fromList(key));
    final block = encrypt.AES(aesKey, mode: encrypt.AESMode.cbc);
    final iv = List<int>.filled(16, 0);
    final encrypter = encrypt.Encrypter(block);
    
    final encrypted = encrypter.encrypt(
      String.fromCharCodes(plaintext),
      iv: encrypt.IV(Uint8List.fromList(iv))
    );
    
    final hexOutput = encrypted.bytes
        .map((b) => b.toRadixString(16).padLeft(2, '0'))
        .join();
    
    return hexOutput;
  }

  /// AES-256-CBC decryption implementation
  static String decryptAES256CBC(List<int> key, String encryptedHex) {
    if (key.length != 32) {
      throw Exception('Key must be 32 bytes long');
    }
    
    final aesKey = encrypt.Key(Uint8List.fromList(key));
    final block = encrypt.AES(aesKey, mode: encrypt.AESMode.cbc);
    final iv = List<int>.filled(16, 0);
    final encrypter = encrypt.Encrypter(block);
    
    // Convert hex string back to bytes
    final encryptedBytes = <int>[];
    for (int i = 0; i < encryptedHex.length; i += 2) {
      final hexByte = encryptedHex.substring(i, i + 2);
      encryptedBytes.add(int.parse(hexByte, radix: 16));
    }
    
    final encrypted = encrypt.Encrypted(Uint8List.fromList(encryptedBytes));
    final decrypted = encrypter.decrypt(encrypted, iv: encrypt.IV(Uint8List.fromList(iv)));
    
    return decrypted;
  }

  /// Encrypts user data JSON and returns hex string for QR code
  static String encryptUserData(String userName, String userId, String userPhone) {
    final userData = {
      "name": userName,
      "userId": userId,
      "phone": userPhone,
    };
    
    final jsonString = jsonEncode(userData);
    return encryptFunction(jsonString);
  }

  /// Decrypts QR code data and returns user data JSON
  static Map<String, dynamic>? decryptUserData(String encryptedHex) {
    try {
      final decryptedJson = decryptFunction(encryptedHex);
      return jsonDecode(decryptedJson) as Map<String, dynamic>;
    } catch (e) {
      debugPrint("Failed to decrypt user data: $e");
      return null;
    }
  }
}