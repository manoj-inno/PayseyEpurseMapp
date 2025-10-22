import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/register2_kyc/entities/register_kyc_entity.dart';

part 'register_kyc_model.freezed.dart';
part 'register_kyc_model.g.dart';

@freezed
class RegisterKycRequestModel with _$RegisterKycRequestModel {
  const factory RegisterKycRequestModel({
    @JsonKey(name: 'reg_ref') required String regRef,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'middle_name') required String middleName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'nationality') required int nationality,
    @JsonKey(name: 'document_id') required String documentId,
    @JsonKey(name: 'optional_doc_id') required String optionalDocId,
    @JsonKey(name: 'dob') required String dob,
    @JsonKey(name: 'doc_expiry_date') required String dateOfExpiry,
    @JsonKey(name: 'doc_issue_date') required String dateOfIssue,
    @JsonKey(name: 'pan_id') required String panIdNumber,
    @JsonKey(name: 'net_worth') required int netWorth,
    @JsonKey(name: 'annual_income') required int annualIncome,
    @JsonKey(name: 'religion') required int religion,
    @JsonKey(name: 'category') required int category,
    @JsonKey(name: 'gender') required int gender,
    @JsonKey(name: 'marital_status') required String maritalStatus,
    @JsonKey(name: 'disability') required int disability,
    @JsonKey(name: 'qualification') required int qualification,
  }) = _RegisterKycRequestModel;

  factory RegisterKycRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterKycRequestModelFromJson(json);
}

@freezed
class RegisterKycResponseModel with _$RegisterKycResponseModel {
  const RegisterKycResponseModel._();

  const factory RegisterKycResponseModel({
    required String regRef,
    required int regStatus,
    required String status,
    required String message,
    required String remark,
    required int userType,
  }) = _RegisterKycResponseModel;

  factory RegisterKycResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterKycResponseModelFromJson(json);

  static Map<String, dynamic> parseNestedJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    final regInfo = data['reg_info'] as Map<String, dynamic>? ?? {};
    
    // Debug logging
    print('DEBUG: json keys: ${json.keys}');
    print('DEBUG: data keys: ${data.keys}');
    print('DEBUG: regInfo keys: ${regInfo.keys}');
    print('DEBUG: remark value: ${json['remark']}');
    print('DEBUG: message value: ${json['message']}');
    
    return {
      'regRef': regInfo['user_ref'] as String? ?? '',
      'regStatus': regInfo['status'] as int? ?? 0,
      'status': json['code']?.toString() ?? '',
      'message': json['message'] as String? ?? '',
      'remark': json['remark'] as String? ?? '',
      'userType': regInfo['user_type'] as int? ?? 0,
    };
  }

  static RegisterKycResponseModel fromNestedJson(Map<String, dynamic> json) =>
      RegisterKycResponseModel.fromJson(parseNestedJson(json));

  RegisterKycEntity toEntity() => RegisterKycEntity(
        regRef: regRef,
        regStatus: regStatus,
        status: status,
        message: message,
        remark: remark,
        userType: userType,
      );
}
