import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import '../../../../core/errors/exception/exceptions.dart';
import 'model/account_sub_type_model.dart';
import 'model/account_type_model.dart';
import 'model/customer_type_model.dart';

abstract class CustomerTypeRemoteDataSource {
  Future<List<CustomerTypeModel>> fetchCustomerTypes();
  Future<List<AccountTypeModel>> getAccountTypes();
  Future<List<AccountSubTypeModel>> getAccountSubTypes(
      int accountTypeId, int customerTypeId);
}

class CustomerTypeRemoteDataSourceImpl implements CustomerTypeRemoteDataSource {
  final http.Client client;

  CustomerTypeRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CustomerTypeModel>> fetchCustomerTypes() async {
    final String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    try {
      final url = Uri.parse('${ApiConfig.masterUrl}/masters/get_cust_type');
      final response =
          await client.get(url, headers: {'Authorization': basicAuth});

      // Check for 503 Service Unavailable
      if (response.statusCode != 200) {
        throw ServerException(
            message: "Server is currently unavailable", statusCode: 503);
      }

      debugPrint(response.body);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final customerArray = (jsonData['cust_array'] as List?) ?? [];
        return customerArray
            .map((customer) => CustomerTypeModel.fromJson(customer))
            .toList();
      } else {
        throw ServerException(
            message: 'Failed to fetch customer types',
            statusCode: response.statusCode);
      }
    } catch (e) {
      debugPrint('Error fetching customer types: ${e.toString()}');
      throw ServerException(
          message: 'Error fetching customer types: ${e.toString()}');
    }
  }

  @override
  Future<List<AccountTypeModel>> getAccountTypes() async {
    final String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    try {
      final response = await client.get(
          Uri.parse('${ApiConfig.baseUrl}/get_acct_type'),
          headers: {'Authorization': basicAuth});

      // Check for 503 Service Unavailable
      if (response.statusCode != 200) {
        throw ServerException(
            message: "Server is currently unavailable", statusCode: 503);
      }

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final accountArray = (jsonData['account_array'] as List?) ?? [];
        return accountArray
            .map((account) => AccountTypeModel.fromJson(account))
            .toList();
      } else {
        throw ServerException(
            message: 'Failed to load account types',
            statusCode: response.statusCode);
      }
    } catch (e) {
      throw ServerException(
          message: 'Error fetching account types: ${e.toString()}');
    }
  }

  @override
  Future<List<AccountSubTypeModel>> getAccountSubTypes(
      int accountTypeId, int customerTypeId) async {
    final String basicAuth =
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}';
    try {
      final url = Uri.parse('${ApiConfig.baseUrl}/get_sub_acct_type');
      final response = await client.get(url, headers: {
        'Content-Type': 'application/json',
        'Authorization': basicAuth
      });

      if (response.statusCode != 200) {
        throw ServerException(
            message: "Server is currently unavailable", statusCode: 503);
      }

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        debugPrint(response.body);
        final accountSubTypesData =
            (jsonData['account_subtype_array'] as List?) ?? [];

        return accountSubTypesData
            .map((data) => AccountSubTypeModel.fromJson(data))
            .where((item) =>
                item.accountTypeId == accountTypeId &&
                item.customerTypeId == customerTypeId)
            .toList();
      } else {
        throw ServerException(
            message: 'Failed to load account subtypes',
            statusCode: response.statusCode);
      }
    } catch (e) {
      throw ServerException(
          message: 'Error fetching account subtypes: ${e.toString()}');
    }
  }
}
