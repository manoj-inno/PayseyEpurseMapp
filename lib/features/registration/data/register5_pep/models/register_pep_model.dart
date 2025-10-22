import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_pep_model.freezed.dart';
part 'register_pep_model.g.dart';

@freezed
class RegisterPepRequestModel with _$RegisterPepRequestModel {
  const factory RegisterPepRequestModel({
    @JsonKey(name: 'user_ref') required String userRef,
    @JsonKey(name: 'pep_id') required int pepType,
    required Map<String, dynamic> dynamicFields, // Dynamic fields using exact field names from API
  }) = _RegisterPepRequestModel;

  factory RegisterPepRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterPepRequestModelFromJson(json);
}

// Extension to add custom toFlattenedJson method
extension RegisterPepRequestModelExtension on RegisterPepRequestModel {
  Map<String, dynamic> toFlattenedJson() {
    final Map<String, dynamic> result = {
      'user_ref': userRef,
      'pep_id': pepType,
    };
    
    // Add dynamic fields as direct properties
    result.addAll(dynamicFields);
    
    return result;
  }
}

@freezed
class RegisterPepResponseModel with _$RegisterPepResponseModel {
  const factory RegisterPepResponseModel({
    required int code,
    required String message,
    required String regRef,
    required int regStatus,
    required String remark,
    required String status,
    required int userType,
  }) = _RegisterPepResponseModel;

  factory RegisterPepResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    final regInfo = data['reg_info'] as Map<String, dynamic>;

    return RegisterPepResponseModel(
      code: json["code"],
      message: json["message"],
      regRef: regInfo["user_ref"],
      regStatus: regInfo["status"],
      remark: json["remark"],
      status: json["status"],
      userType: regInfo["user_type"],
    );
  }
}
