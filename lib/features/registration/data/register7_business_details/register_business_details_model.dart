import 'package:equatable/equatable.dart';

import '../../domain/register7_business_details/register_business_details_entity.dart';

class RegisterBusinessRequestModel extends Equatable {
  final String companyName;
  final int businessSector;
  final String dateOfIncorporation;
  final int turnOver;
  final String tinNumber;
  final String userRef;
  const RegisterBusinessRequestModel({
    required this.companyName,
    required this.businessSector,
    required this.dateOfIncorporation,
    required this.turnOver,
    required this.tinNumber,
    required this.userRef,
  });

  Map<String, dynamic> toJson() {
    return {
      "company_name": companyName,
      "business_type": businessSector,
      "date_of_incorp": dateOfIncorporation,
      "turn_over": turnOver,
      "tin_number": tinNumber,
      "user_ref": userRef,
    };
  }

  @override
  List<Object> get props =>
      [companyName, businessSector, dateOfIncorporation, turnOver, tinNumber];
}

class RegisterBusinessResponseModel extends RegisterBusinessEntity {
  const RegisterBusinessResponseModel({
    required super.userRef,
    required super.regStatus,
    required super.message,
    required super.remark,
    required super.status,
  });

  factory RegisterBusinessResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'];

    return RegisterBusinessResponseModel(
      message: json['message'],
      remark: json['remark'],
      status: json['status'],
      userRef: data['reg_info']['user_ref'],
      regStatus: data['reg_info']['status'],
    );
  }
}
