import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register5_pep/models/register_pep_model.dart';

abstract class RegisterPepRepo {
  Future<Either<Failure, RegisterPepResponseModel>> registerPep(
      RegisterPepRequestModel pep);
}
