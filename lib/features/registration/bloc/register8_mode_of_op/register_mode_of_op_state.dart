part of 'register_mode_of_op_bloc.dart';

sealed class RegisterModeOfOpState extends Equatable {
  const RegisterModeOfOpState();

  @override
  List<Object> get props => [];
}

final class RegisterModeOfOpInitial extends RegisterModeOfOpState {}

final class RegisterModeOfOpLoading extends RegisterModeOfOpState {}

final class RegisterModeOfOpSuccess extends RegisterModeOfOpState {
  final ModeOfOperationEntity modeOfOperation;

  const RegisterModeOfOpSuccess(this.modeOfOperation);
}

final class RegisterModeOfOpFailure extends RegisterModeOfOpState {
  final Failure failure;

  const RegisterModeOfOpFailure(this.failure);
}

final class RegisterModeOfOpServerDown extends RegisterModeOfOpState {
  final Failure failure;

  const RegisterModeOfOpServerDown(this.failure);
}
