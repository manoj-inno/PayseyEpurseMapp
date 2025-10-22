import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_kyc_entity.freezed.dart';
part 'register_kyc_entity.g.dart';

@freezed
class RegisterKycEntity with _$RegisterKycEntity {
  const factory RegisterKycEntity({
    required String regRef,
    required int regStatus,
    required String status,
    required String message,
    required String remark,
    required int userType,
  }) = _RegisterKycEntity;

  factory RegisterKycEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisterKycEntityFromJson(json);
}
