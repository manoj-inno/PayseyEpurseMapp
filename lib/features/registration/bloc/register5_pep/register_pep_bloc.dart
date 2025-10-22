import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register5_pep/models/register_pep_model.dart';
import '../../domain/register5_pep/register_pep.dart';

part 'register_pep_event.dart';
part 'register_pep_state.dart';
part 'register_pep_bloc.freezed.dart';

class RegisterPepBloc extends Bloc<RegisterPepEvent, RegisterPepState> {
  final RegisterPepUseCase registerPepUseCase;

  RegisterPepBloc({required this.registerPepUseCase})
      : super(const RegisterPepState.initial()) {
    on<RegisterPepEvent>((event, emit) async {
      await event.when(
        submit: (requestModel) async {
          emit(const RegisterPepState.loading());

          final result = await registerPepUseCase(requestModel);

          result.fold(
            (failure) {
              debugPrint("__________REGISTER PEP FAILURE____________");
              debugPrint(failure.runtimeType.toString());

              if (failure is ServerDownFailure) {
                emit(RegisterPepState.serverDown(
                    message:
                        'Server is currently unavailable. Please try again later.'));
              } else if (failure.statusCode != 200 &&
                  failure.statusCode != null) {
                emit(RegisterPepState.serverDown(
                    message:
                        'Server is currently unavailable. Please try again later.'));
              } else {
                emit(RegisterPepState.error(message: failure.message));
              }
            },
            (registerPep) =>
                emit(RegisterPepState.loaded(registerPep: registerPep)),
          );
        },
      );
    });
  }
}
