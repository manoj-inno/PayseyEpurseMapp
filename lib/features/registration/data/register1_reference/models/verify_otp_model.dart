import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_model.freezed.dart';
part 'verify_otp_model.g.dart';

@freezed
class VerifyOtpModel with _$VerifyOtpModel {
  const factory VerifyOtpModel({
    @Default('') String refNumber,
    @Default('') String message,
  }) = _VerifyOtpModel;

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpModelFromJson(json);
}
