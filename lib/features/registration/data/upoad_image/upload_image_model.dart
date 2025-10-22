import 'dart:convert';

import '../../domain/upload_image/upload_image_entity.dart';

class UploadResponseModel extends UploadResponse {
  const UploadResponseModel({
    required super.code,
    required super.message,
    required super.remark,
    required super.status,
    super.data,
  });

  factory UploadResponseModel.fromJson(String source) =>
      UploadResponseModel.fromMap(json.decode(source));

  factory UploadResponseModel.fromMap(Map<String, dynamic> map) {
    return UploadResponseModel(
      code: map["code"],
      message: map["message"],
      remark: map["remark"],
      status: map["status"],
      data: map["data"] != null ? UploadDataModel.fromMap(map["data"]) : null,
    );
  }
}

class UploadDataModel extends UploadData {
  const UploadDataModel({
    super.regInfo,
    super.userKycDoc,
  });

  factory UploadDataModel.fromMap(Map<String, dynamic> map) {
    return UploadDataModel(
      regInfo: map["reg_info"] != null
          ? RegInfoModel.fromMap(map["reg_info"])
          : null,
      userKycDoc: map["user_kyc_doc"] != null
          ? UserKycDocModel.fromMap(map["user_kyc_doc"])
          : null,
    );
  }
}

class RegInfoModel extends RegInfo {
  const RegInfoModel({
    required super.id,
    required super.userRef,
  });

  factory RegInfoModel.fromMap(Map<String, dynamic> map) {
    return RegInfoModel(
      id: map["id"],
      userRef: map["user_ref"],
    );
  }
}

class UserKycDocModel extends UserKycDoc {
  const UserKycDocModel({
    required super.id,
    required super.userId,
    required super.idFront,
    required super.idBack,
    required super.selfie,
  });

  factory UserKycDocModel.fromMap(Map<String, dynamic> map) {
    return UserKycDocModel(
      id: map["id"],
      userId: map["user_id"],
      idFront: map["id_front"],
      idBack: map["id_back"],
      selfie: map["selfie"],
    );
  }
}
