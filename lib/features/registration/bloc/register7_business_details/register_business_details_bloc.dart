import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register7_business_details/register_business_details_model.dart';
import '../../domain/register7_business_details/register_business_details.dart';

part 'register_business_details_event.dart';
part 'register_business_details_state.dart';

class RegisterBusinessDetailsBloc
    extends Bloc<RegisterBusinessDetailsEvent, RegisterBusinessDetailsState> {
  final RegisterBusinessUseCase registerBusinessDetails;

  RegisterBusinessDetailsBloc({required this.registerBusinessDetails})
      : super(RegisterBusinessDetailsInitial()) {
    on<RegisterBusinessEvent>(_onRegisterBusinessDetails);
  }

  Future<void> _onRegisterBusinessDetails(RegisterBusinessEvent event,
      Emitter<RegisterBusinessDetailsState> emit) async {
    emit(RegisterBusinessDetailsLoading());

    final result = await registerBusinessDetails(event.request);

    result.fold(
      (failure) => _handleFailure(failure, emit),
      (response) => emit(RegisterBusinessDetailsLoaded(response)),
    );
  }

  void _handleFailure(
      Failure failure, Emitter<RegisterBusinessDetailsState> emit) {
    debugPrint("__________HANDLING BUSINESS DETAILS FAILURE____________");
    debugPrint(failure.runtimeType.toString());

    if (failure is ServerDownFailure) {
      debugPrint("__________SERVER DOWN FAILURE____________");
      emit(RegisterBusinessDetailsServerDown(
          'Server is currently unavailable. Please try again later.'));
    } else if (failure is ServerFailure && failure.statusCode == 503) {
      debugPrint("__________SERVER FAILURE 503____________");
      emit(RegisterBusinessDetailsServerDown(
          'Server is currently unavailable. Please try again later.'));
    } else if (failure is NetworkFailure) {
      emit(RegisterBusinessDetailsError(failure.message));
    } else {
      debugPrint("__________OTHER FAILURE____________");
      emit(RegisterBusinessDetailsError(failure.message));
    }
  }
}
