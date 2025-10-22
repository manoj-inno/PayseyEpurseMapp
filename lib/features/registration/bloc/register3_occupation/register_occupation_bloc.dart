import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register3_occupation/models/register_occupation_model.dart';
import '../../domain/register3_occupation/register_occupation.dart';

part 'register_occupation_event.dart';
part 'register_occupation_state.dart';
part 'register_occupation_bloc.freezed.dart';

class RegisterOccupationBloc
    extends Bloc<RegisterOccupationEvent, RegisterOccupationState> {
  final RegisterOccupationUseCase registerOccupation;

  RegisterOccupationBloc({required this.registerOccupation})
      : super(const RegisterOccupationState.initial()) {
    on<RegisterOccupationEvent>((event, emit) async {
      await event.when(
        register: (occupation) => _onRegisterOccupation(occupation, emit),
      );
    });
  }

  Future<void> _onRegisterOccupation(RegisterOccupationModel occupation,
      Emitter<RegisterOccupationState> emit) async {
    emit(const RegisterOccupationState.loading());

    try {
      final result = await registerOccupation(occupation);

      result.fold(
        (failure) => _handleFailure(failure, emit),
        (response) =>
            emit(RegisterOccupationState.success(occupation: response)),
      );
    } catch (e) {
      debugPrint("__________REGISTER OCCUPATION EXCEPTION____________");
      debugPrint("Error: ${e.toString()}");
      emit(const RegisterOccupationState.failure(
          message: "An unexpected error occurred. Please try again."));
    }
  }

  void _handleFailure(Failure failure, Emitter<RegisterOccupationState> emit) {
    debugPrint("__________HANDLING OCCUPATION FAILURE____________");
    debugPrint(failure.runtimeType.toString());

    if (failure is ServerDownFailure) {
      debugPrint("__________SERVER DOWN FAILURE____________");
      emit(const RegisterOccupationState.serverDown(
          message: 'Server is currently unavailable. Please try again later.'));
    } else if (failure is ServerFailure) {
      if (failure.statusCode == 503) {
        debugPrint("__________SERVER FAILURE 503____________");
        emit(const RegisterOccupationState.serverDown(
            message:
                'Server is currently unavailable. Please try again later.'));
      } else if (failure.statusCode == 408) {
        emit(const RegisterOccupationState.failure(
            message:
                "Request timed out. Please check your network connection."));
      } else if (failure.message.contains("empty response")) {
        emit(const RegisterOccupationState.failure(
            message:
                "Server returned an empty response. Please try again later."));
      } else {
        debugPrint("__________OTHER SERVER FAILURE____________");
        emit(RegisterOccupationState.failure(message: failure.message));
      }
    } else if (failure is NetworkFailure) {
      emit(RegisterOccupationState.failure(
          message: "Network error: ${failure.message}"));
    } else {
      debugPrint("__________OTHER FAILURE____________");
      emit(RegisterOccupationState.failure(message: failure.message));
    }
  }
}
