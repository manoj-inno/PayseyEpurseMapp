import 'package:equatable/equatable.dart';

class UploadResponse extends Equatable {
  final int code;
  final String message;
  final String remark;
  final String status;
  final UploadData? data;

  const UploadResponse({
    required this.code,
    required this.message,
    required this.remark,
    required this.status,
    this.data,
  });

  @override
  List<Object?> get props => [code, message, remark, status, data];
}

class UploadData extends Equatable {
  final RegInfo? regInfo;
  final UserKycDoc? userKycDoc;

  const UploadData({
    this.regInfo,
    this.userKycDoc,
  });

  @override
  List<Object?> get props => [regInfo, userKycDoc];
}

class RegInfo extends Equatable {
  final int id;
  final String userRef;

  const RegInfo({
    required this.id,
    required this.userRef,
  });

  @override
  List<Object> get props => [id, userRef];
}

class UserKycDoc extends Equatable {
  final int id;
  final int userId;
  final String idFront;
  final String idBack;
  final String selfie;

  const UserKycDoc({
    required this.id,
    required this.userId,
    required this.idFront,
    required this.idBack,
    required this.selfie,
  });

  @override
  List<Object> get props => [id, userId, idFront, idBack, selfie];
}
