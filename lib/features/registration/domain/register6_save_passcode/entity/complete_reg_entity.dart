import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_reg_entity.freezed.dart';

@freezed
class RegistrationEntity with _$RegistrationEntity {
  const factory RegistrationEntity({
    required int id,
    required String mobile,
    required String email,
    required String authStatus,
    required String userRef,
    required String jwtToken,
    required String refreshToken,
  }) = _RegistrationEntity;
}
