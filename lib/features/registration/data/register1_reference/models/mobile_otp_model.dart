import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobile_otp_model.freezed.dart';
part 'mobile_otp_model.g.dart';

@freezed
class MobileOtpModel with _$MobileOtpModel {
  const factory MobileOtpModel({
    @Default('') String otp,
    @Default('') String message,
    @Default('') String status,
  }) = _MobileOtpModel;

  factory MobileOtpModel.fromJson(Map<String, dynamic> json) =>
      _$MobileOtpModelFromJson(json);
}
