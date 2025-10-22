part of 'register_mode_of_op_bloc.dart';

sealed class RegisterModeOfOpEvent extends Equatable {
  const RegisterModeOfOpEvent();

  @override
  List<Object> get props => [];
}

class RegisterModeOfOperationEvent extends RegisterModeOfOpEvent {
  final ModeOfOperationRequestModel requestModel;

  const RegisterModeOfOperationEvent(this.requestModel);

  @override
  List<Object> get props => [requestModel];
}
