import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_mobile_model.freezed.dart';
part 'check_mobile_model.g.dart';

@freezed
class MobileCheckModel with _$MobileCheckModel {
  const factory MobileCheckModel({
    @Default(0) int code,
    @Default('') String message,
    MobileCheckDataModel? data,
    @Default('') String remark,
  }) = _MobileCheckModel;

  factory MobileCheckModel.fromJson(Map<String, dynamic> json) =>
      _$MobileCheckModelFromJson(json);
}

@freezed
class MobileCheckDataModel with _$MobileCheckDataModel {
  const factory MobileCheckDataModel({
    @Default(0) int id,
    @Default('') String mobile,
    @Default('') String email,
    @JsonKey(name: 'user_ref') @Default('') String regRef,
    @Default(0) int status,
    @Default(0) int processStatus,
    @Default('') String authStatus,
    @Default('') String createdTime,
    @Default('') String authTime,
    @Default(0) int createdUserid,
    @Default(0) int authUserid,
    @Default('') String deauthNarration,
    @JsonKey(name: 'user_type') @Default(22) int userType,
  }) = _MobileCheckDataModel;

  factory MobileCheckDataModel.fromJson(Map<String, dynamic> json) =>
      _$MobileCheckDataModelFromJson(json);
}
