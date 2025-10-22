part of 'register_business_details_bloc.dart';

sealed class RegisterBusinessDetailsEvent extends Equatable {
  const RegisterBusinessDetailsEvent();

  @override
  List<Object> get props => [];
}

class RegisterBusinessEvent extends RegisterBusinessDetailsEvent {
  final RegisterBusinessRequestModel request;

  const RegisterBusinessEvent(this.request);

  @override
  List<Object> get props => [request];
}
