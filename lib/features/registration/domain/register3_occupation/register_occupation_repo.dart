import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register3_occupation/models/register_occupation_model.dart';

abstract class RegisterOccupationRepository {
  Future<Either<Failure, RegisterOccupationResponseModel>> registerOccupation(
      RegisterOccupationModel occupation);
}
