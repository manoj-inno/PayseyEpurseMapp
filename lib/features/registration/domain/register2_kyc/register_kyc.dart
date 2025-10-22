import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register2_kyc/models/register_kyc_model.dart';
import 'entities/register_kyc_entity.dart';
import 'register_kyc_repo.dart';

class RegisterKycUseCase {
  final RegisterKycRepository repository;
  RegisterKycUseCase(this.repository);

  Future<Either<Failure, RegisterKycEntity>> call(
      RegisterKycRequestModel request) {
    return repository.registerKyc(request);
  }
}
