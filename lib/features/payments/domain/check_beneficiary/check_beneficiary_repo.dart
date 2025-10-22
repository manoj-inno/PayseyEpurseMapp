import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/check_beneficiary/model/remote_beneficiary_model.dart';
import 'check_beneficiary_entity.dart';

abstract class BeneficiaryRepository {
  Future<Either<Failure, List<BeneficiaryEntity>>> checkBeneficiary(
      CheckBeneficiaryRequest request);
}
