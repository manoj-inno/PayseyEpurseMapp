import 'dart:convert';
import 'dart:io';

import 'package:epurse/features/registration/data/id_card_extraction/models/ocr_front_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../splash/domain/models/device_id_model.dart';
import 'models/ocr_back_model.dart';

abstract class IdCardExtractionDataSource {
  Future<OcrFrontModel> performFrontOcr(
      String referenceId, File image, String side);
  Future<OcrBackModel> performBackOcr(
      String referenceId, File image, String side);
}

class IdCardExtractionDataSourceImpl extends IdCardExtractionDataSource {
  final http.Client client;

  IdCardExtractionDataSourceImpl(this.client);

  @override
  Future<OcrFrontModel> performFrontOcr(
      String referenceId, File image, String side) async {
    try {
      String basicAuth = 'Basic ${base64Encode(utf8.encode('test:test'))}';
      final preferencesManager = await PreferencesManager.getInstance();
      String? deviceInfoJson = preferencesManager.deviceInfo;

      Map<String, String> headers = {
        'Authorization': basicAuth,
        'api-key': 'testapikey',
      };

      final request = http.MultipartRequest(
        'POST',
        Uri.parse("${ApiConfig.baseUrl}/epurse/ocr-eth"),
      );
      request.headers.addAll(headers);

      // Add required form fields as text/plain content type (matching Android implementation)
      request.fields["reference_id"] = referenceId;
      request.fields["side"] = side;
      request.fields["Institute_ID"] = "1";
      request.fields["Device_OS"] = Platform.isAndroid ? 'android' : 'ios';

      // Add device information if available
      if (deviceInfoJson != null) {
        try {
          final deviceInfo =
              DeviceIdModel.fromJson(json.decode(deviceInfoJson));
          request.fields["Device_ID"] = deviceInfo.deviceId;
          request.fields["Device_Model"] = deviceInfo.deviceModel;
          request.fields["Device_Manufacturer"] = deviceInfo.deviceManufacturer;
        } catch (e) {
          debugPrint('Error parsing device info: $e');
          // Set empty values if parsing fails
          request.fields["Device_ID"] = "";
          request.fields["Device_Model"] = "";
          request.fields["Device_Manufacturer"] = "";
        }
      } else {
        // Set empty values if no device info
        request.fields["Device_ID"] = "";
        request.fields["Device_Model"] = "";
        request.fields["Device_Manufacturer"] = "";
      }

      // Add optional fields as empty strings
      request.fields["Device_IP"] = "";
      request.fields["Latitude"] = "";
      request.fields["Longitude"] = "";
      request.fields["Device_ISP"] = "";
      request.fields["Device_Network_type"] = "";

      // Add file as multipart (matching Android implementation)
      request.files.add(await http.MultipartFile.fromPath(
        "file",
        image.path,
      ));

      // Debug logging - Log all request parameters (matching Android implementation)
      debugPrint('=== OCR FRONT API REQUEST DEBUG ===');
      debugPrint('API Endpoint: ${ApiConfig.baseUrl}/epurse/ocr-eth');
      debugPrint('--- BASIC PARAMETERS ---');
      debugPrint('reference_id: $referenceId');
      debugPrint('side: $side');
      debugPrint('file_path: ${image.path}');
      debugPrint('file_size: ${await image.length()} bytes');
      debugPrint('--- DEVICE INFO PARAMETERS ---');
      debugPrint('Institute_ID: 1');
      debugPrint('Device_IP: ""');
      debugPrint('Latitude: ""');
      debugPrint('Longitude: ""');
      debugPrint('Device_ID: ${request.fields["Device_ID"]}');
      debugPrint('Device_Model: ${request.fields["Device_Model"]}');
      debugPrint(
          'Device_Manufacturer: ${request.fields["Device_Manufacturer"]}');
      debugPrint('Device_OS: ${request.fields["Device_OS"]}');
      debugPrint('Device_ISP: ""');
      debugPrint('Device_Network_type: ""');
      debugPrint('=== END REQUEST DEBUG ===');

      final response = await client.send(request);
      final responseBody = await response.stream.bytesToString();
      debugPrint('----------------OCR FRONT RESPONSE ----------------');
      debugPrint(responseBody);
      if (response.statusCode == 200) {
        return OcrFrontModel.fromJson(json.decode(responseBody));
      } else if (response.statusCode == 502) {
        throw Exception('Server is currently unavailable (502 Bad Gateway)');
      } else {
        throw Exception("Datas couldn't be extracted from the image");
      }
    } on SocketException catch (e) {
      throw Exception('Network error: ${e.message}');
    } on http.ClientException catch (e) {
      throw Exception('HTTP client error: ${e.message}');
    } catch (e) {
      throw Exception('Error performing front OCR: $e');
    }
  }

  @override
  Future<OcrBackModel> performBackOcr(
      String referenceId, File image, String side) async {
    try {
      String basicAuth = 'Basic ${base64Encode(utf8.encode('test:test'))}';
      final preferencesManager = await PreferencesManager.getInstance();
      String? deviceInfoJson = preferencesManager.deviceInfo;

      final request = http.MultipartRequest(
        'POST',
        Uri.parse("${ApiConfig.baseUrl}/epurse/ocr-eth"),
      );
      request.headers.addAll({
        'Authorization': basicAuth,
        'api-key': 'testapikey',
      });

      // Add required form fields as text/plain content type (matching Android implementation)
      request.fields["reference_id"] = referenceId;
      request.fields["side"] = side;
      request.fields["Institute_ID"] = "1";
      request.fields["Device_OS"] = Platform.isAndroid ? 'android' : 'ios';

      // Add device information if available
      if (deviceInfoJson != null) {
        try {
          final deviceInfo =
              DeviceIdModel.fromJson(json.decode(deviceInfoJson));
          request.fields["Device_ID"] = deviceInfo.deviceId;
          request.fields["Device_Model"] = deviceInfo.deviceModel;
          request.fields["Device_Manufacturer"] = deviceInfo.deviceManufacturer;
        } catch (e) {
          debugPrint('Error parsing device info: $e');
          // Set empty values if parsing fails
          request.fields["Device_ID"] = "";
          request.fields["Device_Model"] = "";
          request.fields["Device_Manufacturer"] = "";
        }
      } else {
        // Set empty values if no device info
        request.fields["Device_ID"] = "";
        request.fields["Device_Model"] = "";
        request.fields["Device_Manufacturer"] = "";
      }

      // Add optional fields as empty strings
      request.fields["Device_IP"] = "";
      request.fields["Latitude"] = "";
      request.fields["Longitude"] = "";
      request.fields["Device_ISP"] = "";
      request.fields["Device_Network_type"] = "";

      // Add file as multipart (matching Android implementation)
      request.files.add(await http.MultipartFile.fromPath(
        "file",
        image.path,
      ));

      // Debug logging - Log all request parameters (matching Android implementation)
      debugPrint('=== OCR BACK API REQUEST DEBUG ===');
      debugPrint('API Endpoint: ${ApiConfig.baseUrl}/epurse/ocr-eth');
      debugPrint('--- BASIC PARAMETERS ---');
      debugPrint('reference_id: $referenceId');
      debugPrint('side: $side');
      debugPrint('file_path: ${image.path}');
      debugPrint('file_size: ${await image.length()} bytes');
      debugPrint('--- DEVICE INFO PARAMETERS ---');
      debugPrint('Institute_ID: 1');
      debugPrint('Device_IP: ""');
      debugPrint('Latitude: ""');
      debugPrint('Longitude: ""');
      debugPrint('Device_ID: ${request.fields["Device_ID"]}');
      debugPrint('Device_Model: ${request.fields["Device_Model"]}');
      debugPrint(
          'Device_Manufacturer: ${request.fields["Device_Manufacturer"]}');
      debugPrint('Device_OS: ${request.fields["Device_OS"]}');
      debugPrint('Device_ISP: ""');
      debugPrint('Device_Network_type: ""');
      debugPrint('=== END REQUEST DEBUG ===');

      final response = await client.send(request);
      final responseBody = await response.stream.bytesToString();
      debugPrint('----------------OCR BACK RESPONSE ----------------');
      debugPrint(responseBody);
      if (response.statusCode == 200) {
        return OcrBackModel.fromJson(json.decode(responseBody));
      } else if (response.statusCode == 502) {
        throw Exception('Server is currently unavailable (502 Bad Gateway)');
      } else {
        throw Exception("Datas couldn't be extracted from the image");
      }
    } on SocketException catch (e) {
      throw Exception('Network error: ${e.message}');
    } on http.ClientException catch (e) {
      throw Exception('HTTP client error: ${e.message}');
    } catch (e) {
      throw Exception('Error performing back OCR: $e');
    }
  }
}
