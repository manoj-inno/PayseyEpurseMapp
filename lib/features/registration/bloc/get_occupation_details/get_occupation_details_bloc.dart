import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/get_occupation_details/usecases/get_occupations.dart';
import '../../domain/get_occupation_details/usecases/get_source_funds.dart';
import 'get_occupation_details_event.dart';
import 'get_occupation_details_state.dart';

class GetOccupationDetailsBloc
    extends Bloc<GetOccupationDetailsEvent, GetOccupationDetailsState> {
  final GetOccupations getOccupations;
  final GetSourceFunds getSourceFunds;

  GetOccupationDetailsBloc({
    required this.getOccupations,
    required this.getSourceFunds,
  }) : super(const GetOccupationDetailsState.initial()) {
    on<GetOccupationDetailsEvent>((event, emit) async {
      await event.when(
        getOccupationDetails: () async {
          final currentState = state;
          if (currentState is GetOccupationDetailsData) {
            emit(currentState.copyWith(
                loadingType: OccupationLoadingType.occupation));
          } else {
            emit(const GetOccupationDetailsState.loading(
                loadingType: OccupationLoadingType.occupation));
          }

          final result = await getOccupations.call();

          result.fold(
            (failure) =>
                _handleFailure(failure, emit, OccupationLoadingType.occupation),
            (occupations) {
              final latestState = state;
              if (latestState is GetOccupationDetailsData) {
                emit(latestState.copyWith(
                  occupations: occupations,
                  loadingType: null,
                ));
              } else {
                emit(GetOccupationDetailsState.data(occupations: occupations));
              }
            },
          );
        },
        getSourceFundDetails: () async {
          final currentState = state;
          if (currentState is GetOccupationDetailsData) {
            emit(currentState.copyWith(
                loadingType: OccupationLoadingType.sourceFunds));
          } else {
            emit(const GetOccupationDetailsState.loading(
                loadingType: OccupationLoadingType.sourceFunds));
          }

          final result = await getSourceFunds.call();

          result.fold(
            (failure) => _handleFailure(
                failure, emit, OccupationLoadingType.sourceFunds),
            (sourceFunds) {
              debugPrint("Source Funds received: ${sourceFunds.length}");
              final latestState = state;
              if (latestState is GetOccupationDetailsData) {
                emit(latestState.copyWith(
                  sourceFunds: sourceFunds,
                  loadingType: null,
                ));
              } else {
                emit(GetOccupationDetailsState.data(sourceFunds: sourceFunds));
              }
            },
          );
        },
        selectOccupation: (occupation) {
          final currentState = state;
          if (currentState is GetOccupationDetailsData) {
            emit(currentState.copyWith(selectedOccupation: occupation));
          }
        },
        selectSourceFund: (sourceFund) {
          final currentState = state;
          if (currentState is GetOccupationDetailsData) {
            emit(currentState.copyWith(selectedSourceFund: sourceFund));
          }
        },
        selectSalaryRange: (salaryRange) {
          // Handle salary range selection if needed
        },
      );
    });
  }

  void _handleFailure(Failure failure, Emitter<GetOccupationDetailsState> emit,
      OccupationLoadingType loadingType) {
    debugPrint("__________HANDLING OCCUPATION DETAILS FAILURE____________");
    debugPrint(failure.runtimeType.toString());

    if (failure is ServerDownFailure) {
      debugPrint("__________SERVER DOWN FAILURE____________");
      emit(GetOccupationDetailsState.data(
        error: 'Server is currently unavailable. Please try again later.',
        isServerDown: true,
        loadingType: null,
      ));
    } else if (failure.statusCode != 200) {
      debugPrint("__________SERVER FAILURE 503____________");
      emit(GetOccupationDetailsState.data(
        error: 'Server is currently unavailable. Please try again later.',
        isServerDown: true,
        loadingType: null,
      ));
    } else {
      debugPrint("__________OTHER FAILURE____________");
      emit(GetOccupationDetailsState.data(
        error: failure.message,
        loadingType: null,
      ));
    }
  }
}
