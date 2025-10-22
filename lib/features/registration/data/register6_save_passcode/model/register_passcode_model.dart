import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/register6_save_passcode/entity/register_passcode_entity.dart';

part 'register_passcode_model.freezed.dart';
part 'register_passcode_model.g.dart';

@freezed
class SavePasscodeRequestModel with _$SavePasscodeRequestModel {
  const factory SavePasscodeRequestModel({
    @JsonKey(name: 'password_enc') required String passwordEnc,
    @JsonKey(name: 'user_ref') required String userRef,
  }) = _SavePasscodeRequestModel;

  factory SavePasscodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SavePasscodeRequestModelFromJson(json);
}

@freezed
class SavePasscodeResponseModel with _$SavePasscodeResponseModel {
  const SavePasscodeResponseModel._();

  const factory SavePasscodeResponseModel({
    required int userId,
    required String userRef,
    required String authStatus,
  }) = _SavePasscodeResponseModel;

  factory SavePasscodeResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data']['reg_info'];
    return SavePasscodeResponseModel(
      userId: data["id"] ?? 0,
      userRef: data["user_ref"] ?? "",
      authStatus: data["auth_status"] ?? "",
    );
  }

  SavePasscodeEntity toEntity() {
    return SavePasscodeEntity(
      userId: userId,
      userRef: userRef,
      authStatus: authStatus,
    );
  }
}
