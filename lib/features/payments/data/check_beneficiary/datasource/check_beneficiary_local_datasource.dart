import '../../../../../core/storage/hive_manager.dart';
import '../../../domain/check_beneficiary/check_beneficiary_entity.dart';

abstract class BeneficiaryLocalDataSource {
  Future<List<BeneficiaryEntity>> getBeneficiaries();
  Future<void> saveBeneficiaries(List<BeneficiaryEntity> beneficiaries);
}

class BeneficiaryLocalDataSourceImpl implements BeneficiaryLocalDataSource {
  final HiveManager hiveManager;

  BeneficiaryLocalDataSourceImpl({required this.hiveManager});

  @override
  Future<List<BeneficiaryEntity>> getBeneficiaries() async {
    return hiveManager.getAllBeneficiaries();
  }

  @override
  Future<void> saveBeneficiaries(List<BeneficiaryEntity> beneficiaries) async {
    await hiveManager.saveBeneficiaries(beneficiaries);
  }
}
