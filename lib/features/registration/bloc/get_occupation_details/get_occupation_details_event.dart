import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_occupation_details/entity/occupation_entity.dart';
import '../../domain/get_occupation_details/entity/source_fund_entity.dart';
import '../../domain/get_personal_details/entities/salary_range_entity.dart';

part 'get_occupation_details_event.freezed.dart';

@freezed
class GetOccupationDetailsEvent with _$GetOccupationDetailsEvent {
  const factory GetOccupationDetailsEvent.getOccupationDetails() =
      GetOccupationDetails;

  const factory GetOccupationDetailsEvent.getSourceFundDetails() =
      GetSourceFundDetails;

  const factory GetOccupationDetailsEvent.selectOccupation({
    required OccupationEntity occupation,
  }) = SelectOccupation;

  const factory GetOccupationDetailsEvent.selectSourceFund({
    required SourceFundEntity sourceFund,
  }) = SelectSourceFund;

  const factory GetOccupationDetailsEvent.selectSalaryRange({
    required SalaryRangeEntity salaryRange,
  }) = SelectSalaryRange;
}
