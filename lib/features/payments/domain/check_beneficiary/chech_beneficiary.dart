import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/check_beneficiary/model/remote_beneficiary_model.dart';
import 'check_beneficiary_entity.dart';
import 'check_beneficiary_repo.dart';

class CheckBeneficiaryUseCase {
  final BeneficiaryRepository repository;

  CheckBeneficiaryUseCase(this.repository);

  Future<Either<Failure, List<BeneficiaryEntity>>> call(
      CheckBeneficiaryRequest request) async {
    return repository.checkBeneficiary(request);
  }
}
