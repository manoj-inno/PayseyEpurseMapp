part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final LoginEntity loginEntity;

  const LoginSuccess({required this.loginEntity});

  @override
  List<Object> get props => [loginEntity];
}

final class LoginFailure extends LoginState {
  final String message;

  const LoginFailure({required this.message});
}

final class LoginsServerDown extends LoginState {
  final String message;

  const LoginsServerDown({required this.message});
}
