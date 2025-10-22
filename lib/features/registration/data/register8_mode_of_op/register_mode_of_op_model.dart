import 'package:equatable/equatable.dart';

import '../../domain/register8_mode_of_op/register_mode_of_op_entity.dart';

class ModeOfOperationRequestModel extends Equatable {
  final String refNumber;
  final int modeOfOpId;
  final String designation;
  final double stake;
  final int noOfPartners;

  const ModeOfOperationRequestModel({
    required this.refNumber,
    required this.modeOfOpId,
    required this.designation,
    required this.stake,
    required this.noOfPartners,
  });

  Map<String, dynamic> toJson() {
    return {
      "user_ref": refNumber,
      "modeop_id": modeOfOpId,
      "designation": designation,
      "stake": stake,
      "no_of_partners": noOfPartners,
    };
  }

  @override
  List<Object?> get props => [modeOfOpId, designation, stake, noOfPartners];
}

class ModeOfOperationResponseModel extends ModeOfOperationEntity {
  final int code;
  final String message;
  final String remark;
  final String status;

  const ModeOfOperationResponseModel({
    required this.code,
    required this.message,
    required this.remark,
    required this.status,
    required super.userRef,
    required super.regStatus,
  });

  factory ModeOfOperationResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    return ModeOfOperationResponseModel(
      code: json["code"],
      message: json["message"],
      remark: json["remark"],
      status: json["status"],
      userRef: data["reg_info"]["user_ref"],
      regStatus: data["reg_info"]["status"],
    );
  }
}
