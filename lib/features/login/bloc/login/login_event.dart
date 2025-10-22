part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Login extends LoginEvent {
  final LoginRequestModel request;

  const Login({required this.request});

  @override
  List<Object> get props => [request];
}
