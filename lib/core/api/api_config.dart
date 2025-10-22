import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'environment.dart';

class ApiConfig {
  static final Map<String, String> _env = {};
  static bool _isLoaded = false;

  static Future<void> loadEnv() async {
    if (_isLoaded) return;

    try {
      // First try to load from assets
      final String content = await rootBundle.loadString('.env');
      _parseEnvContent(content);
      _isLoaded = true;
      debugPrint('Environment variables loaded successfully from assets');
    } catch (e) {
      debugPrint('Could not load .env from assets: $e');
      // Fallback to loading from application documents directory
      try {
        final directory = await getApplicationDocumentsDirectory();
        final file = File('${directory.path}/.env');
        if (await file.exists()) {
          final content = await file.readAsString();
          _parseEnvContent(content);
          _isLoaded = true;
          debugPrint('Environment variables loaded from documents directory');
        } else {
          // Use default values
          debugPrint('No .env file found, using default values');
          _isLoaded = true;
        }
      } catch (e) {
        debugPrint('Error loading .env file: $e');
      }
    }
  }

  static void _parseEnvContent(String content) {
    final List<String> lines = content.split('\n');
    for (var line in lines) {
      if (line.trim().isNotEmpty && !line.startsWith('#')) {
        final parts = line.split('=');
        if (parts.length == 2) {
          _env[parts[0].trim()] = parts[1].trim();
        }
      }
    }
  }

  static String get username => _env['USERNAME'] ?? '';
  static String get masterUserName => _env['MASTER_USERNAME'] ?? '';
  static String get password => _env['PASSWORD'] ?? '';
  static String get appVersion => _env['APP_VERSION'] ?? '';
  static String get contentType => _env['CONTENT_TYPE'] ?? 'application/json';
  static String get baseUrl {
    switch (EnvironmentConfig.environment) {
      case Environment.development:
        return _env['BASE_URL'] ?? '';
      case Environment.testing:
        return _env['TEST_BASE_URL'] ?? '';
      case Environment.production:
        return _env['BASE_URL'] ?? '';
    }
  }

  static String get testBaseUrl => _env['TEST_BASE_URL'] ?? '';
  static String get masterUrl {
    switch (EnvironmentConfig.environment) {
      case Environment.development:
        return _env['MASTER_LOCAL_URL'] ?? '';
      case Environment.testing:
        return _env['MASTER_TEST_URL'] ?? '';
      case Environment.production:
        return _env['MASTER_BASE_URL'] ?? '';
    }
  }

  static String get masterLocalUrl => _env['MASTER_LOCAL_URL'] ?? '';
  static String get masterTestUrl => _env['MASTER_TEST_URL'] ?? '';
  static String get epurseUrl {
    switch (EnvironmentConfig.environment) {
      case Environment.development:
        return _env['EPURSE_LOCAL_URL'] ?? '';
      case Environment.testing:
        return _env['EPURSE_TEST_URL'] ?? '';
      case Environment.production:
        return _env['EPURSE_BASE_URL'] ?? '';
    }
  }

  static String get epurseBaseUrl => _env['EPURSE_BASE_URL'] ?? '';
  static String get epurseLocalUrl => _env['EPURSE_LOCAL_URL'] ?? '';
  static String get epurseTestUrl => _env['EPURSE_TEST_URL'] ?? '';
  static String get encryptionKey => _env['ENCRYPTION_KEY'] ?? '';
}
