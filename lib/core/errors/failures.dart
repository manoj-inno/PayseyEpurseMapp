import 'package:equatable/equatable.dart';

/// Base class for all failures in the application
abstract class Failure extends Equatable {
  final String message;
  final int? statusCode;

  const Failure({
    required this.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    super.statusCode,
  });
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    super.message = 'Network connection failed',
    super.statusCode,
  });
}

class CacheFailure extends Failure {
  const CacheFailure({
    super.message = 'Cache operation failed',
    super.statusCode,
  });
}

class AuthFailure extends Failure {
  const AuthFailure({
    required super.message,
    super.statusCode,
  });
}

class ValidationFailure extends Failure {
  const ValidationFailure({
    required super.message,
    super.statusCode,
  });
}

class CroppingFailure extends Failure {
  const CroppingFailure({
    super.message = 'Failed to crop image',
    super.statusCode,
  });
}

class ServerDownFailure extends ServerFailure {
  const ServerDownFailure({
    super.message = 'Server is currently unavailable',
    super.statusCode = 503,
  });
}
