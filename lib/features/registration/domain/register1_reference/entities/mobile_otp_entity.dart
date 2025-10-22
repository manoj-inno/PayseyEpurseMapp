import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobile_otp_entity.freezed.dart';
part 'mobile_otp_entity.g.dart';

@freezed
class MobileOtpEntity with _$MobileOtpEntity {
  const factory MobileOtpEntity({
    required String otp,
    required String message,
    required String status,
  }) = _MobileOtpEntity;

  factory MobileOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$MobileOtpEntityFromJson(json);
}
