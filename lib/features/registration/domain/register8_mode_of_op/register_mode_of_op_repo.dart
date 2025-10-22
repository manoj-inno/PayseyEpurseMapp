import 'package:epurse/features/registration/data/register8_mode_of_op/register_mode_of_op_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import 'register_mode_of_op_entity.dart';

abstract class RegisterModeOfOperationRepository {
  Future<Either<Failure, ModeOfOperationEntity>> registerModeOfOperation(
      ModeOfOperationRequestModel requestModel);
}
