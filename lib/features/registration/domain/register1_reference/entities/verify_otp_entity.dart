import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_entity.freezed.dart';
part 'verify_otp_entity.g.dart';

@freezed
class MobileOtpVerificationEntity with _$MobileOtpVerificationEntity {
  const factory MobileOtpVerificationEntity({
    required int code,
    required String message,
    required String status,
    required String mobile,
  }) = _MobileOtpVerificationEntity;

  factory MobileOtpVerificationEntity.fromJson(Map<String, dynamic> json) =>
      _$MobileOtpVerificationEntityFromJson(json);
}
