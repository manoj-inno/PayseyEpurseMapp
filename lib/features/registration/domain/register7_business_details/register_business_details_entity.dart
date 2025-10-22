import 'package:equatable/equatable.dart';

class RegisterBusinessEntity extends Equatable {
  final String userRef;
  final int regStatus;
  final String status;
  final String message;
  final String remark;

  const RegisterBusinessEntity({
    required this.userRef,
    required this.regStatus,
    required this.status,
    required this.message,
    required this.remark,
  });

  @override
  List<Object> get props => [userRef, regStatus, status, message, remark];
}
