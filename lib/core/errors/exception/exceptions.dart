/// Base exception class for the application
class AppException implements Exception {
  final String message;
  final int? statusCode;

  AppException({
    required this.message,
    this.statusCode,
  });
}

/// Server related exceptions
class ServerException extends AppException {
  ServerException({
    required super.message,
    super.statusCode,
  });

  @override
  String toString() {
    return message;
  }
}

/// Network related exceptions
class NetworkException extends AppException {
  NetworkException({
    super.message = 'Network connection failed',
    super.statusCode,
  });
  @override
  String toString() {
    return message;
  }
}

/// Cache related exceptions
class CacheException extends AppException {
  CacheException({
    super.message = 'Cache operation failed',
    super.statusCode,
  });
}

/// Authentication related exceptions
class AuthException extends AppException {
  AuthException({
    required super.message,
    super.statusCode,
  });
}

/// Input validation exceptions
class ValidationException extends AppException {
  ValidationException({
    required super.message,
    super.statusCode,
  });
}

/// Server unavailability exception - used for 503 errors, socket exceptions, etc.
class ServerDownException extends ServerException {
  ServerDownException({
    super.message = 'Server is currently unavailable',
    super.statusCode = 503,
  });
}

class UnauthorizedException extends AuthException {
  UnauthorizedException({
    required super.message,
    super.statusCode = 401,
  });
}
