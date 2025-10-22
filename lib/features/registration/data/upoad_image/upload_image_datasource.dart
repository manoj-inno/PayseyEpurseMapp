import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:epurse/core/api/api_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import 'upload_image_model.dart';

abstract class UploadRemoteDataSource {
  Future<UploadResponseModel> uploadImages({
    required String userRef,
    required File idFront,
    required File idBack,
    required File selfie,
    File? signature,
  });
}

class UploadRemoteDataSourceImpl implements UploadRemoteDataSource {
  final http.Client client;

  UploadRemoteDataSourceImpl({required this.client});

  @override
  Future<UploadResponseModel> uploadImages({
    required String userRef,
    required File idFront,
    required File idBack,
    required File selfie,
    File? signature,
  }) async {
    // Get preferences and set up headers
    PreferencesManager preferencesManager =
        await PreferencesManager.getInstance();
    String? deviceInfo = preferencesManager.deviceInfo;
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';

    Map<String, String> headers = {
      'Authorization': basicAuth,
      'Content-Type': ApiConfig.contentType,
      'DeviceInfo': deviceInfo.toString()
    };

    final url = "${ApiConfig.epurseUrl}/registration/kyc_doc";
    log(url);
    // Create and configure the request
    var request = http.MultipartRequest(
      'POST',
      Uri.parse(url),
    );
    request.headers.addAll(headers);

    // Add form fields and files
    request.fields['user_ref'] = userRef;
    request.files
        .add(await http.MultipartFile.fromPath('id_front', idFront.path));
    request.files
        .add(await http.MultipartFile.fromPath('id_back', idBack.path));
    request.files.add(await http.MultipartFile.fromPath('selfie', selfie.path));

    // Send request and handle response
    var response = await client.send(request);

    if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      debugPrint("______________UPLOAD IMAGES RESPONSE____________");
      debugPrint(responseBody);
      return UploadResponseModel.fromJson(responseBody);
    } else if (response.statusCode != 200) {
      final errorBody = await response.stream.bytesToString();
      debugPrint("______________UPLOAD IMAGES ERROR____________");
      debugPrint(errorBody);
      throw ServerException(
          message: "Server is currently unavailable", statusCode: 503);
    } else {
      final errorBody = await response.stream.bytesToString();
      debugPrint("______________UPLOAD IMAGES ERROR____________");
      debugPrint(errorBody);
      throw ServerException(
          message: "Failed to upload images", statusCode: response.statusCode);
    }
  }
}
