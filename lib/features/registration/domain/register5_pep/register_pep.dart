import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register5_pep/models/register_pep_model.dart';
import 'register_pep_repo.dart';

class RegisterPepUseCase {
  final RegisterPepRepo repository;

  RegisterPepUseCase(this.repository);

  Future<Either<Failure, RegisterPepResponseModel>> call(
      RegisterPepRequestModel pep) {
    return repository.registerPep(pep);
  }
}
