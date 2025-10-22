import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register8_mode_of_op/register_mode_of_op_model.dart';
import 'register_mode_of_op_entity.dart';
import 'register_mode_of_op_repo.dart';

class RegisterModeOfOperation {
  final RegisterModeOfOperationRepository repository;

  RegisterModeOfOperation({required this.repository});

  Future<Either<Failure, ModeOfOperationEntity>> call(
      ModeOfOperationRequestModel requestModel) {
    return repository.registerModeOfOperation(requestModel);
  }
}
