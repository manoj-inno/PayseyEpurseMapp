import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class PreferencesManager {
  static PreferencesManager? _instance;
  static SharedPreferences? _preferences;

  // Keys
  static const String keyTheme = 'isDarkMode';
  static const String keyLanguage = 'languageCode';
  static const String keyDeviceInfo = 'deviceInfo';
  static const String keyIsRegistered = 'isRegistered';
  static const String keyReferenceNumber = 'referenceNumber';
  static const String keyFaceLogin = 'isFaceLoginEnabled';
  static const String keyJWTToken = 'jwtToken';
  static const String keyRefreshToken = 'refreshToken';
  static const String keyFCMToken = 'fcmToken';
  static const String keyUserId = 'userId';
  static const String keyUserType = 'userType';
  static const String keyUserRef = 'userRef';
  static const String keyUserMobile = 'userMobile';
  static const String keyUserEmail = 'userEmail';
  static const String keyUserName = 'userName';
  static const String keyUserPin = 'userPin';
  static const String keyMfaId = 'mfaId';
  static const String keyEncryptedSessionKey = 'encryptedSessionKey';
  static const String keyDecryptedSessionKey = 'decryptedSessionKey';
  static const String keyMfaName = 'mfaName';

  // Default values
  static const bool defaultTheme = false;
  static const String defaultLanguage = 'en';
  static const bool defaultIsRegistered = false;
  static const String defaultReferenceNumber = '';
  static const bool defaultFaceLogin = false;
  static const String defaultJWTToken = '';
  static const String defaultRefreshToken = '';
  static const String defaultFCMToken = '';
  static const String defaultUserId = '';
  static const String defaultUserType = '';
  static const String defaultUserRef = '';
  static const String defaultUserMobile = '';
  static const String defaultUserEmail = '';
  static const String defaultUserName = '';
  static const String defaultUserPin = '';
  static const int defaultMfaId = -1;
  static const String defaultEncryptedSessionKey = '';
  static const String defaultDecryptedSessionKey = '';
  static const String defaultMfaName = '';
  PreferencesManager._();

  static Future<PreferencesManager> getInstance() async {
    if (_instance == null) {
      _instance = PreferencesManager._();
      _preferences = await SharedPreferences.getInstance();
    }
    return _instance!;
  }

  // Theme preferences
  bool get isDarkMode => _preferences?.getBool(keyTheme) ?? defaultTheme;

  Future<void> setDarkMode(bool value) async {
    await _preferences?.setBool(keyTheme, value);
  }

  // Language preferences
  String get languageCode =>
      _preferences?.getString(keyLanguage) ?? defaultLanguage;

  Future<void> setLanguageCode(String value) async {
    await _preferences?.setString(keyLanguage, value);
  }

  // Device ID preferences
  String? get deviceInfo => _preferences?.getString(keyDeviceInfo);

  Future<void> setDeviceInfo(String value) async {
    await _preferences?.setString(keyDeviceInfo, value);
  }

  // Is Registered preferences
  bool get isRegistered =>
      _preferences?.getBool(keyIsRegistered) ?? defaultIsRegistered;

  Future<void> setIsRegistered(bool value) async {
    await _preferences?.setBool(keyIsRegistered, value);
  }

  // Reference Number preferences
  String? get referenceNumber => _preferences?.getString(keyReferenceNumber);

  Future<void> setReferenceNumber(String value) async {
    await _preferences?.setString(keyReferenceNumber, value);
  }

  // Face Login preferences
  bool get isFaceLoginEnabled =>
      _preferences?.getBool(keyFaceLogin) ?? defaultFaceLogin;

  Future<void> setFaceLoginEnabled(bool value) async {
    await _preferences?.setBool(keyFaceLogin, value);
  }

  // JWT Token preferences
  String? get jwtToken => _preferences?.getString(keyJWTToken);

  Future<void> setJWTToken(String value) async {
    debugPrint("🔐 PreferencesManager: Setting JWT token");
    debugPrint("🔐 Value to store: '$value'");
    debugPrint("🔐 Value length: ${value.length}");
    await _preferences?.setString(keyJWTToken, value);
    
    // Verify the token was stored
    final retrieved = _preferences?.getString(keyJWTToken);
    debugPrint("🔐 PreferencesManager: Token stored successfully: ${retrieved != null}");
    debugPrint("🔐 PreferencesManager: Retrieved value: '$retrieved'");
  }

  // Refresh Token preferences
  String? get refreshToken => _preferences?.getString(keyRefreshToken);

  Future<void> setRefreshToken(String value) async {
    await _preferences?.setString(keyRefreshToken, value);
  }

  // FCM Token preferences
  String? get fcmToken => _preferences?.getString(keyFCMToken);

  Future<void> setFCMToken(String value) async {
    await _preferences?.setString(keyFCMToken, value);
  }

  // User ID preferences
  String? get userId => _preferences?.getString(keyUserId);

  Future<void> setUserId(String value) async {
    await _preferences?.setString(keyUserId, value);
  }

  // User Type preferences
  String? get userType => _preferences?.getString(keyUserType);

  Future<void> setUserType(String value) async {
    await _preferences?.setString(keyUserType, value);
  }

  // User Reference preferences
  String? get userRef => _preferences?.getString(keyUserRef);

  Future<void> setUserRef(String value) async {
    await _preferences?.setString(keyUserRef, value);
  }

  // User Mobile preferences
  String? get userMobile => _preferences?.getString(keyUserMobile);

  Future<void> setUserMobile(String value) async {
    await _preferences?.setString(keyUserMobile, value);
  }

  // User Email preferences
  String? get userEmail => _preferences?.getString(keyUserEmail);

  Future<void> setUserEmail(String value) async {
    await _preferences?.setString(keyUserEmail, value);
  }

  // User Name preferences
  String? get userName => _preferences?.getString(keyUserName);

  Future<void> setUserName(String value) async {
    await _preferences?.setString(keyUserName, value);
  }

  // User PIN preferences
  String? get userPin => _preferences?.getString(keyUserPin);

  Future<void> setUserPin(String value) async {
    await _preferences?.setString(keyUserPin, value);
  }

  // MFA Id preferences
  int get mfaId => _preferences?.getInt(keyMfaId) ?? defaultMfaId;

  Future<void> setMfaId(int value) async {
    await _preferences?.setInt(keyMfaId, value);
  }

  // Encrypted Session Key preferences
  String? get encryptedSessionKey => _preferences?.getString(keyEncryptedSessionKey);

  Future<void> setEncryptedSessionKey(String value) async {
    await _preferences?.setString(keyEncryptedSessionKey, value);
  }

  // Decrypted Session Key preferences
  String? get decryptedSessionKey => _preferences?.getString(keyDecryptedSessionKey);

  Future<void> setDecryptedSessionKey(String value) async {
    await _preferences?.setString(keyDecryptedSessionKey, value);
  }

  // MFA Name (e.g., "Transaction Pin", "Face Verification")
  String? get mfaName => _preferences?.getString(keyMfaName);

  Future<void> setMfaName(String value) async {
    await _preferences?.setString(keyMfaName, value);
  }

  // Get all user information as a map
  Map<String, String?> getUserInfo() {
    return {
      'userId': userId,
      'userType': userType,
      'userRef': userRef,
      'userMobile': userMobile,
      'userEmail': userEmail,
      'userName': userName,
      'userPin': userPin,
      'jwtToken': jwtToken,
      'refreshToken': refreshToken,
    };
  }

  // Clear authentication-related preferences
  Future<void> clearAuthData() async {
    debugPrint("🔐 Clearing authentication data...");
    await _preferences?.setString(keyJWTToken, defaultJWTToken);
    await _preferences?.setString(keyRefreshToken, defaultRefreshToken);
    await _preferences?.setBool(keyIsRegistered, defaultIsRegistered);
    await _preferences?.setString(keyUserId, defaultUserId);
    await _preferences?.setString(keyUserType, defaultUserType);
    await _preferences?.setString(keyUserRef, defaultUserRef);
    await _preferences?.setString(keyUserMobile, defaultUserMobile);
    await _preferences?.setString(keyUserEmail, defaultUserEmail);
    await _preferences?.setString(keyUserName, defaultUserName);
    await _preferences?.setString(keyUserPin, defaultUserPin);
    await _preferences?.setInt(keyMfaId, defaultMfaId);
    await _preferences?.setString(keyEncryptedSessionKey, defaultEncryptedSessionKey);
    await _preferences?.setString(keyDecryptedSessionKey, defaultDecryptedSessionKey);
    await _preferences?.setString(keyMfaName, defaultMfaName);
    debugPrint("🔐 Authentication data cleared successfully");
  }
}
