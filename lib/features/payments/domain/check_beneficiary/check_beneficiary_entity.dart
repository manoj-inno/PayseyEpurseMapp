import 'package:equatable/equatable.dart';

class BeneficiaryEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String middleName;
  final String label;
  final String mobile;
  final int userId;

  const BeneficiaryEntity({
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.label,
    required this.mobile,
    required this.userId,
  });

  @override
  List<Object?> get props =>
      [firstName, lastName, middleName, label, mobile, userId];
}
