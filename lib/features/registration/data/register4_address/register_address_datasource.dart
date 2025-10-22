import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../../../core/util/api_response_code.dart';
import 'models/register_address_model.dart';

abstract class RegisterAddressRemoteDataSource {
  Future<RegisterAddressResponseModel> submitAddress(
      RegisterAddressRequestModel requestModel,
      String refNumber,
      String customerTypeId);
}

class RegisterAddressRemoteDataSourceImpl
    implements RegisterAddressRemoteDataSource {
  final http.Client client;

  RegisterAddressRemoteDataSourceImpl({required this.client});

  @override
  Future<RegisterAddressResponseModel> submitAddress(
      RegisterAddressRequestModel requestModel,
      String refNumber,
      String customerTypeId) async {
    try {
      PreferencesManager preferencesManager =
          await PreferencesManager.getInstance();
      String? deviceInfo = preferencesManager.deviceInfo;
      final String url = "${ApiConfig.epurseUrl}/registration/address";

      String basicAuth =
          'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
      Map<String, String> headers = {
        'Authorization': basicAuth,
        'Content-Type': ApiConfig.contentType,
        'DeviceInfo': deviceInfo.toString()
      };

      debugPrint("______________REGISTER ADDRESS REQUEST____________");
      debugPrint("request: ${requestModel.toMap()}");
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      );

      request.fields.addAll({'cust_address': requestModel.toMap().toString()});
      request.fields.addAll({'user_ref': refNumber});
      request.fields.addAll({'cust_type': customerTypeId});

      Map<String, Map<String, dynamic>> imagePathToAddressMap = {};

      for (var addressDetail in requestModel.addressDetails) {
        final addressTypeId = addressDetail['address_type_id'];
        final addressProofId = addressDetail['proof_type_id'];
        final addressProofImagePath = addressDetail['addressProofImagePath'];

        if (addressProofImagePath != null && addressProofImagePath.isNotEmpty) {
          imagePathToAddressMap[addressProofImagePath] = {
            'addressTypeId': addressTypeId,
            'addressProofId': addressProofId,
          };
        }
      }
      for (String imagePath in requestModel.imagePaths) {
        final addressInfo = imagePathToAddressMap[imagePath];
        if (addressInfo != null) {
          final addressTypeId = addressInfo['addressTypeId'];
          final addressProofId = addressInfo['addressProofId'];
          final imageKey = 'file_${addressTypeId}_$addressProofId';

          debugPrint("Adding image with key: $imageKey, path: $imagePath");
          request.files
              .add(await http.MultipartFile.fromPath(imageKey, imagePath));
        } else {
          debugPrint("Image not matched to address details: $imagePath");
          request.files
              .add(await http.MultipartFile.fromPath('images', imagePath));
        }
      }
      request.headers.addAll(headers);
      var streamedResponse = await client.send(request);
      var response = await http.Response.fromStream(streamedResponse);
      debugPrint("______________REGISTER ADDRESS RESPONSE____________");
      debugPrint("response: ${response.body}");
      final responseData = json.decode(response.body);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        if (responseData['code'] == ApiResponseCode.success.value) {
          return RegisterAddressResponseModel.fromJson(responseData);
        } else {
          throw Exception(
            responseData['message'] ?? 'Server error occurred',
          );
        }
      } else if (response.statusCode == 502 || response.statusCode == 503) {
        throw ServerDownException(
            message:
                'Server is currently unavailable. Please try again later.');
      } else {
        throw Exception(
          responseData['message'] ?? 'Server error occurred',
        );
      }
    } catch (e) {
      debugPrint("Error submitting address: $e");
      if (e is ServerDownException || e is ServerException) {
        rethrow;
      }

      if (e.toString().contains('SocketException') ||
          e.toString().contains('Connection refused') ||
          e.toString().contains('ClientException') ||
          e.toString().contains('Connection timed out')) {
        throw ServerDownException(
            message:
                'Server is currently unavailable. Please try again later.');
      }

      throw ServerException(message: 'Failed to submit address: $e');
    }
  }
}
