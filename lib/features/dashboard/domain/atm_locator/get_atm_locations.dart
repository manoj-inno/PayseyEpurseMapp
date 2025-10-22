import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import 'atm_locator_entity.dart';
import 'atm_locator_repo.dart';

class GetAtmLocationsUseCase {
  final AtmRepository repository;

  GetAtmLocationsUseCase(this.repository);

  Future<Either<Failure, List<AtmLocation>>> call() {
    return repository.getAtmLocations();
  }
}
