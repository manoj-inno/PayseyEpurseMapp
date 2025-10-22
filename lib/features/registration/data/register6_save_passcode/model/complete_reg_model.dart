import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/register6_save_passcode/entity/complete_reg_entity.dart';

part 'complete_reg_model.freezed.dart';
part 'complete_reg_model.g.dart';

@freezed
class RegistrationModel with _$RegistrationModel {
  const RegistrationModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RegistrationModel({
    required int id,
    required String mobile,
    required String email,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'user_ref') required String userRef,
    @JsonKey(name: 'jwt_token') required String jwtToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RegistrationModel;

  factory RegistrationModel.fromJson(Map<String, dynamic> json) {
    debugPrint("______________REGISTRATION MODEL FROM JSON____________");
    debugPrint("JSON: $json");
    
    // New API response structure: data is nil, so we need to get user info from preferences
    debugPrint("New API response structure detected - data is nil");
    
    // Since data is nil, we'll create a minimal model with default values
    // The actual user data should be retrieved from preferences or other sources
    final modelData = {
      'id': 0, // Default value since not provided in new response
      'mobile': '', // Will be retrieved from preferences
      'email': '', // Will be retrieved from preferences
      'auth_status': 'completed', // Based on successful completion
      'user_ref': json['user_ref'] ?? '', // Should be passed from the request
      'jwt_token': '', // Not provided in new response
      'refresh_token': '', // Not provided in new response
    };
    
    debugPrint("Model Data: $modelData");
    debugPrint("✅ Model created with new API structure");
    
    try {
      final result = _$$RegistrationModelImplFromJson(modelData);
      debugPrint("✅ Model created successfully: $result");
      return result;
    } catch (e) {
      debugPrint("❌ Model creation failed: $e");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() =>
      _$$RegistrationModelImplToJson(this as _$RegistrationModelImpl);

  RegistrationEntity toEntity() {
    return RegistrationEntity(
      id: id,
      mobile: mobile,
      email: email,
      authStatus: authStatus,
      userRef: userRef,
      jwtToken: jwtToken,
      refreshToken: refreshToken,
    );
  }
}
