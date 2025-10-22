import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_business_details/entities/business_type_entity.dart';
import '../../domain/get_business_details/entities/mode_of_operation_entity.dart';
import '../../domain/get_business_details/entities/turnover_entity.dart';

part 'get_business_details_state.freezed.dart';

@freezed
class GetBusinessDetailsState with _$GetBusinessDetailsState {
  const factory GetBusinessDetailsState.initial() = GetBusinessDetailsInitial;

  const factory GetBusinessDetailsState.businessTypesLoading() =
      GetBusinessTypesLoading;

  const factory GetBusinessDetailsState.businessTypesSuccess({
    required List<BusinessTypeEntity> businessTypes,
  }) = GetBusinessTypesSuccess;

  const factory GetBusinessDetailsState.businessTypesFailure({
    required String message,
  }) = GetBusinessTypesFailure;

  const factory GetBusinessDetailsState.businessServerDown() =
      GetBusinessServerDown;

  const factory GetBusinessDetailsState.modeOfOperationsLoading() =
      GetModeOfOperationsLoading;

  const factory GetBusinessDetailsState.modeOfOperationsSuccess({
    required List<ModeOfOperationEntity> modeOfOperations,
  }) = GetModeOfOperationsSuccess;

  const factory GetBusinessDetailsState.modeOfOperationsFailure({
    required String message,
  }) = GetModeOfOperationsFailure;

  const factory GetBusinessDetailsState.modeOfOperationsServerDown() =
      GetModeOfOperationsServerDown;

  const factory GetBusinessDetailsState.turnoversLoading() =
      GetTurnoversLoading;

  const factory GetBusinessDetailsState.turnoversSuccess({
    required List<TurnoverEntity> turnovers,
  }) = GetTurnoversSuccess;

  const factory GetBusinessDetailsState.turnoversFailure({
    required String message,
  }) = GetTurnoversFailure;

  const factory GetBusinessDetailsState.turnoversServerDown() =
      GetTurnoversServerDown;

  const factory GetBusinessDetailsState.businessAndTurnoversSuccess({
    required List<BusinessTypeEntity> businessTypes,
    required List<TurnoverEntity> turnovers,
  }) = GetBusinessAndTurnoversSuccess;
}
