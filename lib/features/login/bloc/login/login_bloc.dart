import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../core/errors/failures.dart';
import '../../../../core/storage/preferences_manager.dart';
import '../../data/login/login_model.dart';
import '../../domain/login/login.dart';
import '../../domain/login/login_entity.dart';
import '../../data/session_key/session_key_datasource.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<Login>(_onLogin);
  }

  void _onLogin(Login event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    final result = await loginUseCase.call(event.request);
    result.fold((failure) {
      if (failure is ServerDownFailure) {
        emit(LoginsServerDown(message: failure.message));
      } else {
        emit(LoginFailure(message: failure.message));
      }
    }, (loginEntity) async {
      emit(LoginSuccess(loginEntity: loginEntity));
      PreferencesManager preferencesManager =
          await PreferencesManager.getInstance();
      
      // Store JWT token and basic info
      debugPrint("🔐 Storing JWT token: '${loginEntity.jwtToken}'");
      debugPrint("🔐 JWT token length: ${loginEntity.jwtToken.length}");
      await preferencesManager.setJWTToken(loginEntity.jwtToken);
      await preferencesManager.setRefreshToken(loginEntity.refreshToken);
      await preferencesManager.setIsRegistered(true);
      
      // Store the encrypted PIN from login request for transaction validation
      final encryptedPin = event.request.encryptedPasscode;
      if (encryptedPin.isNotEmpty) {
        await preferencesManager.setUserPin(encryptedPin);
        debugPrint("🔐 PIN stored from login: $encryptedPin");
      }
      
      // Verify token was stored
      final storedToken = preferencesManager.jwtToken;
      debugPrint("🔐 Verification - Stored token: '$storedToken'");
      debugPrint("🔐 Verification - Stored token length: ${storedToken?.length ?? 0}");
      
      // Store MFA ID with fallback to -1
      if (loginEntity is LoginResponseModel) {
        debugPrint("🔐 LoginEntity is LoginResponseModel");
        debugPrint("🔐 loginEntity.mfaId: ${loginEntity.mfaId}");
        final mfaId = loginEntity.mfaIdValue;
        debugPrint("🔐 About to store MFA ID: $mfaId at ${DateTime.now().millisecondsSinceEpoch}");
        await preferencesManager.setMfaId(mfaId);
        debugPrint("🔐 Stored MFA ID: $mfaId at ${DateTime.now().millisecondsSinceEpoch}");
        
        // Verify it was stored correctly
        final storedMfaId = preferencesManager.mfaId;
        debugPrint("🔐 Verification - Stored MFA ID: $storedMfaId at ${DateTime.now().millisecondsSinceEpoch}");
      } else {
        debugPrint("🔐 LoginEntity is NOT LoginResponseModel, type: ${loginEntity.runtimeType}");
      }

      // Store additional user information from reg_info if available FIRST
      if (loginEntity is LoginResponseModel && loginEntity.regInfo != null) {
        debugPrint("🔐 Storing user information from reg_info");
        debugPrint("User ID: ${loginEntity.userId}");
        debugPrint("User Type: ${loginEntity.userType}");
        debugPrint("User Ref: ${loginEntity.userRef}");
        debugPrint("User Mobile: ${loginEntity.userMobile}");
        debugPrint("User Email: ${loginEntity.userEmail}");
        debugPrint("Auth Status: ${loginEntity.authStatus}");
        
        if (loginEntity.userId != null) {
          await preferencesManager.setUserId(loginEntity.userId!);
        }
        if (loginEntity.userType != null) {
          await preferencesManager.setUserType(loginEntity.userType!);
        }
        if (loginEntity.userRef != null) {
          await preferencesManager.setUserRef(loginEntity.userRef!);
        }
        if (loginEntity.userMobile != null) {
          await preferencesManager.setUserMobile(loginEntity.userMobile!);
        }
        if (loginEntity.userEmail != null) {
          await preferencesManager.setUserEmail(loginEntity.userEmail!);
        }
      }
      
      // Store user name information from user_kyc if available
      if (loginEntity is LoginResponseModel && loginEntity.userKyc != null) {
        debugPrint("🔐 Storing user name information from user_kyc");
        debugPrint("First Name: ${loginEntity.firstName}");
        debugPrint("Middle Name: ${loginEntity.middleName}");
        debugPrint("Last Name: ${loginEntity.lastName}");
        debugPrint("Full Name: ${loginEntity.fullName}");
        
        if (loginEntity.fullName != null && loginEntity.fullName!.isNotEmpty) {
          await preferencesManager.setUserName(loginEntity.fullName!);
          debugPrint("✅ User name stored: ${loginEntity.fullName}");
        }
      }

      // Fetch and store encrypted session key AFTER user information is stored
      try {
        final client = http.Client();
        final sessionKeyDs = SessionKeyDataSourceImpl(client: client);
        final sessionKey = await sessionKeyDs.fetchSessionKey();
        debugPrint("🔐 Encrypted session key fetched and stored: ${sessionKey.isNotEmpty}");
      } catch (e) {
        debugPrint("❌ Failed to fetch session key: $e");
      }

      // Final summary of saved fields for verification
      try {
        debugPrint("================ STORED FIELDS SUMMARY ================");
        debugPrint("isRegistered: ${preferencesManager.isRegistered}");
        debugPrint("jwtToken stored: ${preferencesManager.jwtToken != null && (preferencesManager.jwtToken?.isNotEmpty ?? false)} (length: ${preferencesManager.jwtToken?.length ?? 0})");
        debugPrint("refreshToken stored: ${preferencesManager.refreshToken != null && (preferencesManager.refreshToken?.isNotEmpty ?? false)} (length: ${preferencesManager.refreshToken?.length ?? 0})");
        debugPrint("userId: ${preferencesManager.userId}");
        debugPrint("userType: ${preferencesManager.userType}");
        debugPrint("userRef: ${preferencesManager.userRef}");
        debugPrint("userMobile: ${preferencesManager.userMobile}");
        debugPrint("userEmail: ${preferencesManager.userEmail}");
        debugPrint("userName: ${preferencesManager.userName}");
        debugPrint("mfaId: ${preferencesManager.mfaId}");
        debugPrint("encryptedSessionKey stored: ${preferencesManager.encryptedSessionKey != null && (preferencesManager.encryptedSessionKey?.isNotEmpty ?? false)} (length: ${preferencesManager.encryptedSessionKey?.length ?? 0})");
        debugPrint("userPin stored: ${preferencesManager.userPin != null && (preferencesManager.userPin?.isNotEmpty ?? false)} (length: ${preferencesManager.userPin?.length ?? 0})");
        debugPrint("=======================================================");
      } catch (e) {
        debugPrint("❌ Failed to print stored fields summary: $e");
      }
    });
  }
}
