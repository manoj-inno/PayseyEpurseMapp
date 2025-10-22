import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_occupation_details/entity/occupation_entity.dart';
import '../../domain/get_occupation_details/entity/source_fund_entity.dart';

part 'get_occupation_details_state.freezed.dart';

enum OccupationLoadingType { occupation, sourceFunds }

@freezed
class GetOccupationDetailsState with _$GetOccupationDetailsState {
  const factory GetOccupationDetailsState.initial() =
      GetOccupationDetailsInitial;

  const factory GetOccupationDetailsState.loading({
    required OccupationLoadingType loadingType,
  }) = GetOccupationDetailsLoading;

  const factory GetOccupationDetailsState.data({
    List<OccupationEntity>? occupations,
    List<SourceFundEntity>? sourceFunds,
    OccupationLoadingType? loadingType,
    OccupationEntity? selectedOccupation,
    SourceFundEntity? selectedSourceFund,
    String? error,
    @Default(false) bool isServerDown,
  }) = GetOccupationDetailsData;

  const factory GetOccupationDetailsState.success({
    required List<OccupationEntity> occupations,
  }) = GetOccupationDetailsSuccess;

  const factory GetOccupationDetailsState.failure({
    required String message,
  }) = GetOccupationDetailsFailure;

  const factory GetOccupationDetailsState.serverDown({
    required String message,
  }) = GetOccupationDetailsServerDown;

  const factory GetOccupationDetailsState.sourceFundsLoading() =
      GetSourceFundsLoading;

  const factory GetOccupationDetailsState.sourceFundsSuccess({
    required List<SourceFundEntity> sourceFunds,
  }) = GetSourceFundsSuccess;

  const factory GetOccupationDetailsState.sourceFundsFailure({
    required String message,
  }) = GetSourceFundsFailure;
}
