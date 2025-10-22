import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import 'atm_locator_entity.dart';

abstract class AtmRepository {
  Future<Either<Failure, List<AtmLocation>>> getAtmLocations();
}
