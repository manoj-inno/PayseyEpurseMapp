import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register8_mode_of_op/register_mode_of_op_model.dart';
import '../../domain/register8_mode_of_op/register_mode_of_op.dart';
import '../../domain/register8_mode_of_op/register_mode_of_op_entity.dart';

part 'register_mode_of_op_event.dart';
part 'register_mode_of_op_state.dart';

class RegisterModeOfOpBloc
    extends Bloc<RegisterModeOfOpEvent, RegisterModeOfOpState> {
  final RegisterModeOfOperation registerModeOfOperation;
  RegisterModeOfOpBloc({required this.registerModeOfOperation})
      : super(RegisterModeOfOpInitial()) {
    on<RegisterModeOfOperationEvent>((event, emit) async {
      emit(RegisterModeOfOpLoading());
      final result = await registerModeOfOperation.call(event.requestModel);
      result.fold((failure) {
        if (failure is ServerDownFailure) {
          emit(RegisterModeOfOpServerDown(failure));
        } else {
          emit(RegisterModeOfOpFailure(failure));
        }
      }, (modeOfOperation) => emit(RegisterModeOfOpSuccess(modeOfOperation)));
    });
  }
}
