import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../domain/login/login_entity.dart';

class LoginRequestModel extends Equatable {
  final String mobileNumber;
  final String encryptedPasscode;

  const LoginRequestModel({
    required this.mobileNumber,
    required this.encryptedPasscode,
  });

  Map<String, dynamic> toJson() {
    return {
      'mobile': mobileNumber,
      'passcode': encryptedPasscode,
    };
  }

  @override
  List<Object?> get props => [mobileNumber, encryptedPasscode];
}

class LoginResponseModel extends LoginEntity {
  final Map<String, dynamic>? regInfo;
  final Map<String, dynamic>? userKyc;
  final int? mfaId;

  const LoginResponseModel({
    required super.jwtToken,
    required super.refreshToken,
    required super.message,
    this.regInfo,
    this.userKyc,
    this.mfaId,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    debugPrint("______________LOGIN RESPONSE MODEL FROM JSON____________");
    debugPrint("JSON: $json");
    
    // New API structure: token is inside data.token, reg_info contains user data, user_kyc contains name info
    final data = json['data'];
    final token = data?['token'] ?? '';
    final regInfo = data?['reg_info'];
    final userKyc = data?['user_kyc'];
    final mfaId = data?['mfa_id'];
    
    debugPrint("Data: $data");
    debugPrint("Token: '$token'");
    debugPrint("Token length: ${token.length}");
    debugPrint("MFA ID from data: $mfaId");
    debugPrint("Reg Info: $regInfo");
    debugPrint("User KYC: $userKyc");
    
    return LoginResponseModel(
      jwtToken: token,
      refreshToken: '', // No refresh token in new API structure
      message: json['message'] ?? '',
      regInfo: regInfo,
      userKyc: userKyc,
      mfaId: (mfaId is int) ? mfaId : (mfaId == null ? null : int.tryParse(mfaId.toString())),
    );
  }

  // Helper methods to extract user information from reg_info
  String? get userId => regInfo?['id']?.toString();
  String? get userType => regInfo?['user_type']?.toString();
  String? get userRef => regInfo?['user_ref']?.toString();
  String? get userMobile => regInfo?['mobile']?.toString();
  String? get userEmail => regInfo?['email']?.toString();

  // mfa_id accessor with default -1 fallback logic
  int get mfaIdValue {
    debugPrint("🔐 mfaIdValue getter called - mfaId: $mfaId");
    if (mfaId == null) {
      debugPrint("🔐 mfaIdValue returning -1 because mfaId is null");
      return -1;
    }
    debugPrint("🔐 mfaIdValue returning: $mfaId");
    return mfaId!;
  }
  String? get authStatus => regInfo?['auth_status']?.toString();
  
  // Helper methods to extract user name information from user_kyc
  String? get firstName => userKyc?['first_name']?.toString();
  String? get middleName => userKyc?['middle_name']?.toString();
  String? get lastName => userKyc?['last_name']?.toString();
  
  // Combined full name
  String? get fullName {
    final first = firstName?.trim();
    final middle = middleName?.trim();
    final last = lastName?.trim();
    
    final nameParts = <String>[];
    if (first != null && first.isNotEmpty) nameParts.add(first);
    if (middle != null && middle.isNotEmpty) nameParts.add(middle);
    if (last != null && last.isNotEmpty) nameParts.add(last);
    
    return nameParts.isNotEmpty ? nameParts.join(' ') : null;
  }
}
