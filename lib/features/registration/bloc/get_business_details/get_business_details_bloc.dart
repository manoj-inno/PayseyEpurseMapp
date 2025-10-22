import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/exception/exceptions.dart';
import '../../domain/get_business_details/usecases/get_business_types.dart';
import '../../domain/get_business_details/usecases/get_mode_of_operation.dart';
import '../../domain/get_business_details/usecases/get_turnover.dart';
import 'get_business_details_event.dart';
import 'get_business_details_state.dart';

class GetBusinessDetailsBloc
    extends Bloc<GetBusinessDetailsEvent, GetBusinessDetailsState> {
  final GetBusinessTypesUseCase getBusinessTypesUseCase;
  final GetModeOfOperationUseCase getModeOfOperationUseCase;
  final GetTurnoversUseCase getTurnoversUseCase;

  GetBusinessDetailsBloc(
      {required this.getBusinessTypesUseCase,
      required this.getModeOfOperationUseCase,
      required this.getTurnoversUseCase})
      : super(const GetBusinessDetailsState.initial()) {
    on<GetBusinessDetailsEvent>((event, emit) async {
      await event.when(
        fetchBusinessTypes: () async {
          if (state is! GetBusinessTypesSuccess) {
            emit(const GetBusinessDetailsState.businessTypesLoading());
          }

          final result = await getBusinessTypesUseCase();
          result.fold(
            (failure) {
              if (failure is ServerDownException) {
                emit(const GetBusinessDetailsState.businessServerDown());
              } else {
                emit(GetBusinessDetailsState.businessTypesFailure(
                    message: failure.toString()));
              }
            },
            (success) {
              if (state is GetTurnoversSuccess) {
                final turnoversState = state as GetTurnoversSuccess;
                emit(GetBusinessDetailsState.businessAndTurnoversSuccess(
                    businessTypes: success,
                    turnovers: turnoversState.turnovers));
              } else {
                emit(GetBusinessDetailsState.businessTypesSuccess(
                    businessTypes: success));
              }
            },
          );
        },
        fetchModeOfOperations: () async {
          debugPrint('Bloc: Starting to fetch mode of operations');
          emit(const GetBusinessDetailsState.modeOfOperationsLoading());
          final result = await getModeOfOperationUseCase();
          result.fold(
            (failure) {
              debugPrint('Bloc: Mode of operations fetch failed: $failure');
              if (failure is ServerDownException) {
                emit(
                    const GetBusinessDetailsState.modeOfOperationsServerDown());
              } else {
                emit(GetBusinessDetailsState.modeOfOperationsFailure(
                    message: failure.toString()));
              }
            },
            (success) {
              debugPrint('Bloc: Mode of operations fetch successful, got ${success.length} items');
              emit(GetBusinessDetailsState.modeOfOperationsSuccess(
                  modeOfOperations: success));
            },
          );
        },
        fetchTurnovers: () async {
          if (state is! GetTurnoversSuccess) {
            emit(const GetBusinessDetailsState.turnoversLoading());
          }

          final result = await getTurnoversUseCase();
          debugPrint("Turnover result: $result");

          result.fold(
            (failure) {
              if (failure is ServerDownException) {
                emit(const GetBusinessDetailsState.turnoversServerDown());
              } else {
                emit(GetBusinessDetailsState.turnoversFailure(
                    message: failure.toString()));
              }
            },
            (success) {
              if (state is GetBusinessTypesSuccess) {
                final businessState = state as GetBusinessTypesSuccess;
                emit(GetBusinessDetailsState.businessAndTurnoversSuccess(
                    businessTypes: businessState.businessTypes,
                    turnovers: success));
              } else {
                emit(GetBusinessDetailsState.turnoversSuccess(
                    turnovers: success));
              }
            },
          );
        },
      );
    });
  }
}
