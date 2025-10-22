import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../../core/api/api_config.dart';
import 'models/face_matching_model.dart';

abstract class FaceMatchRemoteDataSource {
  Future<FaceMatchResponseModel> matchFaces(
      Uint8List candidateImage, String referenceImageUrl, String refNum);
}

class FaceMatchRemoteDataSourceImpl implements FaceMatchRemoteDataSource {
  final http.Client client;

  FaceMatchRemoteDataSourceImpl(this.client);

  Future<File> _downloadFile(String url) async {
    debugPrint('Downloading file from URL: $url');
    final response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dir = await getTemporaryDirectory();
      final filename = path.basename(url);
      final file = File('${dir.path}/$filename');

      await file.writeAsBytes(response.bodyBytes);
      debugPrint('File downloaded to: ${file.path}');
      return file;
    } else {
      throw Exception('Failed to download file: ${response.statusCode}');
    }
  }

  @override
  Future<FaceMatchResponseModel> matchFaces(
      Uint8List candidateImage, String referenceImageUrl, String refNum) async {
    try {
      debugPrint('Starting face match request...');
      final uri = Uri.parse('${ApiConfig.baseUrl}/epurse/verifyface/');
      debugPrint('Request URL: $uri');

      // Download reference image from URL
      final referenceImageFile = await _downloadFile(referenceImageUrl);

      // Create temporary file for candidate image
      final tempDir = await getTemporaryDirectory();
      final candidateImageFile = File('${tempDir.path}/candidate_image.jpg');
      await candidateImageFile.writeAsBytes(candidateImage);

      final request = http.MultipartRequest('POST', uri);

      // Add both images to the request
      request.files.add(await http.MultipartFile.fromPath(
        'candidate_image',
        candidateImageFile.path,
      ));

      request.files.add(await http.MultipartFile.fromPath(
        'reference_image',
        referenceImageFile.path,
      ));

      request.fields['image_id'] = refNum;

      debugPrint('Sending request...');
      final streamedResponse = await request.send().timeout(
        const Duration(seconds: 30),
        onTimeout: () {
          throw Exception('Request timed out');
        },
      );

      // Clean up temporary files
      await candidateImageFile.delete();
      await referenceImageFile.delete();

      debugPrint(
          'Response received. Status code: ${streamedResponse.statusCode}');

      final responseBody = await streamedResponse.stream.bytesToString();
      log('Response body: $responseBody');
      debugPrint('Response body: $responseBody');
      log('Response status code: ${streamedResponse.statusCode}');

      if (streamedResponse.statusCode == 200) {
        final jsonResponse = json.decode(responseBody);
        if (jsonResponse['success'] == true &&
            jsonResponse['verification_status'] != "failed") {
          return FaceMatchResponseModel.fromJson(jsonResponse);
        } else {
          throw Exception(
              'Face matching failed: ${jsonResponse['verification_status'] ?? 'Unknown error'}');
        }
      } else {
        throw Exception(
            'Failed to match faces: ${streamedResponse.statusCode} - $responseBody');
      }
    } on ClientException catch (e) {
      throw Exception('HTTP client error: ${e.message}');
    } on SocketException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      debugPrint('Face matching error: $e');
      throw Exception('Face Not Matching');
    }
  }
}
