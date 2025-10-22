import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../entity/complete_reg_entity.dart';
import '../register_passcode_repo.dart';

class CompleteRegUseCase {
  final SavePasscodeRepository repository;

  CompleteRegUseCase(this.repository);

  Future<Either<Failure, RegistrationEntity>> call(String userRef) async {
    return await repository.completeRegistration(userRef);
  }
}
