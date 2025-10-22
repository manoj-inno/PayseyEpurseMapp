import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_personal_details/entities/category_entity.dart';
import '../../domain/get_personal_details/entities/disability_entity.dart';
import '../../domain/get_personal_details/entities/gender_entity.dart';
import '../../domain/get_personal_details/entities/qualification_entity.dart';
import '../../domain/get_personal_details/entities/religion_entity.dart';
import '../../domain/get_personal_details/entities/salary_range_entity.dart';

part 'get_personal_details_event.freezed.dart';

@freezed
class GetPersonalDetailsEvent with _$GetPersonalDetailsEvent {
  const factory GetPersonalDetailsEvent.fetchGenderList() = FetchGenderList;
  const factory GetPersonalDetailsEvent.fetchReligionList() = FetchReligionList;
  const factory GetPersonalDetailsEvent.fetchCategoryList() = FetchCategoryList;
  const factory GetPersonalDetailsEvent.fetchDisabilityList() =
      FetchDisabilityList;
  const factory GetPersonalDetailsEvent.fetchQualificationList() =
      FetchQualificationList;
  const factory GetPersonalDetailsEvent.fetchSalaryRangeList() =
      FetchSalaryRangeList;
  const factory GetPersonalDetailsEvent.selectSalaryRange(
      SalaryRangeEntity salaryRange) = SelectSalaryRange;
  const factory GetPersonalDetailsEvent.selectGender(GenderEntity gender) =
      SelectGender;
  const factory GetPersonalDetailsEvent.selectReligion(
      ReligionEntity religion) = SelectReligion;
  const factory GetPersonalDetailsEvent.selectCategory(
      CategoryEntity category) = SelectCategory;
  const factory GetPersonalDetailsEvent.selectDisability(
      DisabilityEntity disability) = SelectDisability;
  const factory GetPersonalDetailsEvent.selectQualification(
      QualificationEntity qualification) = SelectQualification;
  const factory GetPersonalDetailsEvent.selectMaritalStatus(
      String maritalStatus) = SelectMaritalStatus;
}
