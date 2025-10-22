import 'package:hive_ce/hive.dart';

import '../../../domain/check_beneficiary/check_beneficiary_entity.dart';

part 'local_beneficiary_model.g.dart';

@HiveType(typeId: 2) // Make sure this typeId is unique
class LocalBeneficiaryModel extends HiveObject {
  @HiveField(0)
  final String firstName;

  @HiveField(1)
  final String lastName;

  @HiveField(2)
  final String middleName;

  @HiveField(3)
  final String label;

  @HiveField(4)
  final String mobile;

  @HiveField(5)
  final int userId;

  LocalBeneficiaryModel({
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.label,
    required this.mobile,
    required this.userId,
  });

  factory LocalBeneficiaryModel.fromEntity(BeneficiaryEntity entity) {
    return LocalBeneficiaryModel(
      firstName: entity.firstName,
      lastName: entity.lastName,
      middleName: entity.middleName,
      label: entity.label,
      mobile: entity.mobile,
      userId: entity.userId,
    );
  }

  BeneficiaryEntity toEntity() {
    return BeneficiaryEntity(
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
      label: label,
      mobile: mobile,
      userId: userId,
    );
  }
}
