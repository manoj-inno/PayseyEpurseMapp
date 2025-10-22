import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import 'models/address_proof_model.dart';
import 'models/address_type_model.dart';
import 'package:http/http.dart' as http;

abstract class GetAddressDetailsDataSource {
  Future<List<AddressTypeModel>> getAddressTypes();
  Future<List<AddressProofModel>> getAddressProofs();
}

class GetAddressDetailsDataSourceImpl implements GetAddressDetailsDataSource {
  final http.Client client;

  GetAddressDetailsDataSourceImpl({required this.client});

  @override
  Future<List<AddressTypeModel>> getAddressTypes() async {
    final response = await client.get(
      Uri.parse('${ApiConfig.masterUrl}/masters/get_addr_type'),
      headers: {'Content-Type': 'application/json'},
    );

    debugPrint(response.body);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> addressList = data['address_type_array'];
      return addressList
          .map((address) => AddressTypeModel.fromJson(address))
          .toList();
    } else {
      throw ServerDownException(
        message: 'Server is currently unavailable. Please try again later.',
      );
    }
  }

  @override
  Future<List<AddressProofModel>> getAddressProofs() async {
    final response = await client
        .get(Uri.parse('${ApiConfig.masterUrl}/masters/get_addr_proof'));

    debugPrint("_____________________GET ADDRESS PROOF_____________________");
    debugPrint('${ApiConfig.masterUrl}/masters/get_addr_proof');

    debugPrint(response.body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      debugPrint("Address Proof API Response: $data");
      final List<dynamic> addressProofs = data['address_proof_array'];
      debugPrint("Address Proof Array: $addressProofs");
      final result = addressProofs
          .map((json) {
            debugPrint("Parsing Address Proof JSON: $json");
            try {
              final model = AddressProofModel.fromJson(json);
              debugPrint("Successfully parsed: ${model.docType} (entityType: ${model.entityType}, isMaster: ${model.isMaster})");
              return model;
            } catch (e) {
              debugPrint("Error parsing JSON: $e");
              rethrow;
            }
          })
          .toList();
      debugPrint("Parsed Address Proof Models: ${result.map((e) => '${e.docType} (entityType: ${e.entityType}, isMaster: ${e.isMaster})').toList()}");
      return result;
    } else {
      throw ServerDownException(
        message: 'Server is currently unavailable. Please try again later.',
      );
    }
  }
}
