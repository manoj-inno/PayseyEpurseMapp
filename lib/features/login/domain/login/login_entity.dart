import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String jwtToken;
  final String refreshToken;
  final String message;

  const LoginEntity({
    required this.jwtToken,
    required this.refreshToken,
    required this.message,
  });

  @override
  List<Object?> get props => [jwtToken, refreshToken, message];
}
