import 'dart:convert';
import 'dart:io';

import 'package:epurse/core/errors/exception/exceptions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../core/api/api_config.dart';
import 'models/category_model.dart';
import 'models/disability_model.dart';
import 'models/gender_model.dart';
import 'models/nationality_model.dart';
import 'models/qualification_model.dart';
import 'models/religion_model.dart';
import 'models/salary_range_model.dart';

abstract class GetPersonalDetailsDatasource {
  Future<List<GenderModel>> getGenderList();
  Future<List<ReligionModel>> getReligionList();
  Future<List<CategoryModel>> getCategories();
  Future<List<DisabilityModel>> getDisability();
  Future<List<QualificationModel>> getQualification();
  Future<List<SalaryRangeModel>> getSalaryRanges();
  Future<List<NationalityModel>> getNationality();
}

class GetPersonalDetailsDatasourceImpl implements GetPersonalDetailsDatasource {
  final http.Client client;

  GetPersonalDetailsDatasourceImpl({required this.client});
  final Map<String, String> headers = {
    'Authorization':
        'Basic ${base64Encode(utf8.encode('${ApiConfig.masterUserName}:${ApiConfig.password}'))}',
    'Content-Type': ApiConfig.contentType,
  };
  @override
  Future<List<GenderModel>> getGenderList() async {
    try {
      debugPrint("++++++++++++GENDER+++++++++++++");
      final response = await client.get(
        Uri.parse('${ApiConfig.masterUrl}/masters/get_gender'),
        headers: headers,
      );

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw Exception(
            "Server is currently unavailable (503 Service Unavailable)");
      }

      debugPrint("++++++++++++GENDER RESPONSE+++++++++++++");
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> genderArray =
            json.decode(response.body)['gender_array'];
        return genderArray.map((e) => GenderModel.fromJson(e)).toList();
      } else {
        throw 'Failed to load Genders';
      }
    } on SocketException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw SocketException('Server connection failed: ${e.message}');
    } on http.ClientException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw Exception('Error fetching genders: ${e.toString()}');
    } catch (e) {
      debugPrint('Error fetching genders: ${e.toString()}');
      throw Exception('Error fetching genders: ${e.toString()}');
    }
  }

  @override
  Future<List<ReligionModel>> getReligionList() async {
    try {
      debugPrint("++++++++++++RELIGION+++++++++++++");
      final response = await client.get(
        Uri.parse('${ApiConfig.masterUrl}/masters/get_religion'),
        headers: headers,
      );

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw Exception(
            "Server is currently unavailable (503 Service Unavailable)");
      }

      debugPrint("++++++++++++RELIGION RESPONSE+++++++++++++");
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> religionArray =
            json.decode(response.body)['religion_array'];
        return religionArray.map((e) => ReligionModel.fromJson(e)).toList();
      } else {
        throw 'Failed to load Relligion';
      }
    } on SocketException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw SocketException('Server connection failed: ${e.message}');
    } on http.ClientException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw Exception('Error fetching religions: ${e.toString()}');
    } catch (e) {
      debugPrint('Error fetching religions: ${e.toString()}');
      throw Exception('Error fetching religions: ${e.toString()}');
    }
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      debugPrint("++++++++++++CATEGORY+++++++++++++");
      final response = await client.get(
        Uri.parse('${ApiConfig.masterUrl}/masters/get_category'),
        headers: headers,
      );

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw Exception(
            "Server is currently unavailable (503 Service Unavailable)");
      }

      debugPrint("++++++++++++CATEGORY RESPONSE+++++++++++++");
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> categoryArray =
            json.decode(response.body)['category_array'];
        return categoryArray.map((e) => CategoryModel.fromJson(e)).toList();
      } else {
        throw 'Failed to load Category';
      }
    } on SocketException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw SocketException('Server connection failed: ${e.message}');
    } on http.ClientException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw Exception('Error fetching categories: ${e.toString()}');
    } catch (e) {
      debugPrint('Error fetching categories: ${e.toString()}');
      throw Exception('Error fetching categories: ${e.toString()}');
    }
  }

  @override
  Future<List<DisabilityModel>> getDisability() async {
    try {
      debugPrint("++++++++++++DISABILITY+++++++++++++");
      final response = await client.get(
        Uri.parse('${ApiConfig.masterUrl}/masters/get_disability'),
        headers: headers,
      );

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw Exception(
            "Server is currently unavailable (503 Service Unavailable)");
      }

      debugPrint("++++++++++++DISABILITY RESPONSE+++++++++++++");
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> disabilityArray =
            json.decode(response.body)['disability_array'];
        return disabilityArray.map((e) => DisabilityModel.fromJson(e)).toList();
      } else {
        throw 'Failed to load Disability';
      }
    } on SocketException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw SocketException('Server connection failed: ${e.message}');
    } on http.ClientException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw Exception('Error fetching disabilities: ${e.toString()}');
    } catch (e) {
      debugPrint('Error fetching disabilities: ${e.toString()}');
      throw Exception('Error fetching disabilities: ${e.toString()}');
    }
  }

  @override
  Future<List<QualificationModel>> getQualification() async {
    try {
      debugPrint("++++++++++++QUALIFICATION+++++++++++++");
      final response = await client.get(
        Uri.parse('${ApiConfig.masterUrl}/masters/get_qualification'),
        headers: headers,
      );

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw Exception(
            "Server is currently unavailable (503 Service Unavailable)");
      }

      debugPrint("++++++++++++QUALIFICATION RESPONSE+++++++++++++");
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> qualificationArray =
            json.decode(response.body)['qualification_array'];
        return qualificationArray
            .map((e) => QualificationModel.fromJson(e))
            .toList();
      } else {
        throw 'Failed to load Qualification';
      }
    } on SocketException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw SocketException('Server connection failed: ${e.message}');
    } on http.ClientException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw Exception('Error fetching qualifications: ${e.toString()}');
    } catch (e) {
      debugPrint('Error fetching qualifications: ${e.toString()}');
      throw Exception('Error fetching qualifications: ${e.toString()}');
    }
  }

  @override
  Future<List<SalaryRangeModel>> getSalaryRanges() async {
    try {
      debugPrint("++++++++++++SALARY RANGES+++++++++++++");
      final response = await client.get(
        Uri.parse('${ApiConfig.masterUrl}/masters/get_salaryrange'),
        headers: headers,
      );

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw Exception(
            "Server is currently unavailable (503 Service Unavailable)");
      }

      debugPrint("++++++++++++SALARY RANGES RESPONSE+++++++++++++");
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> salaryRangeArray =
            json.decode(response.body)['salary_range_array'];
        return salaryRangeArray
            .map((e) => SalaryRangeModel.fromJson(e))
            .toList();
      } else {
        throw 'Failed to load Salary Ranges';
      }
    } on SocketException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw SocketException('Server connection failed: ${e.message}');
    } on http.ClientException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw Exception('Error fetching salary ranges: ${e.toString()}');
    } catch (e) {
      debugPrint('Error fetching salary ranges: ${e.toString()}');
      throw Exception('Error fetching salary ranges: ${e.toString()}');
    }
  }

  @override
  Future<List<NationalityModel>> getNationality() async {
    try {
      debugPrint("++++++++++++NATIONALITY+++++++++++++");
      final response = await client.get(
        Uri.parse('${ApiConfig.masterUrl}/masters/get_nationality'),
        headers: headers,
      );

      // Check for 503 Service Unavailable
      if (response.statusCode == 503) {
        throw ServerException(
            message:
                "Server is currently unavailable (503 Service Unavailable)");
      }

      debugPrint("++++++++++++NATIONALITY RESPONSE+++++++++++++");
      debugPrint(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> nationalityArray =
            json.decode(response.body)['data'];
        return nationalityArray
            .map((e) => NationalityModel.fromJson(e))
            .toList();
      } else {
        throw 'Failed to load Nationality';
      }
    } on SocketException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw SocketException('Server connection failed: ${e.message}');
    } on http.ClientException catch (e) {
      debugPrint('Server connection failed: ${e.message}');
      throw Exception('Error fetching nationality: ${e.toString()}');
    } catch (e) {
      debugPrint('Error fetching nationality: ${e.toString()}');
      throw Exception('Error fetching nationality: ${e.toString()}');
    }
  }
}
