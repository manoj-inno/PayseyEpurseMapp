import 'package:dartz/dartz.dart';

import '../business_details_repo.dart';
import '../entities/turnover_entity.dart';

class GetTurnoversUseCase {
  final BusinessDetailsRepository repository;
  GetTurnoversUseCase(this.repository);

  Future<Either<Exception, List<TurnoverEntity>>> call() {
    return repository.getTurnovers();
  }
}
