import 'package:equatable/equatable.dart';

class ModeOfOperationEntity extends Equatable {
  final String userRef;
  final int regStatus;

  const ModeOfOperationEntity({
    required this.userRef,
    required this.regStatus,
  });

  @override
  List<Object> get props => [userRef, regStatus];
}
