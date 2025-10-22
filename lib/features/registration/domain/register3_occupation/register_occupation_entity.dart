import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_occupation_entity.freezed.dart';

@freezed
class RegisterOccupationEntity with _$RegisterOccupationEntity {
  const factory RegisterOccupationEntity({
    required int sourceOfFund,
    required int occupation,
    String? employer,
    String? employmentStatus,
    String? employeeId,
    String? placeOfPosting,
    int? salaryRange,
    int? netWorth,
    String? officeAddress,
    String? officePhoneNumber,
    required String refNumber,
    String? designation,
  }) = _RegisterOccupationEntity;
}
