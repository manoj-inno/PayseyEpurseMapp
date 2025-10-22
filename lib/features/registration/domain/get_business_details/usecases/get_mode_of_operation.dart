import 'package:dartz/dartz.dart';

import '../business_details_repo.dart';
import '../entities/mode_of_operation_entity.dart';

class GetModeOfOperationUseCase {
  final BusinessDetailsRepository repository;

  GetModeOfOperationUseCase(this.repository);

  Future<Either<Exception, List<ModeOfOperationEntity>>> call() async {
    return await repository.getModeOfOperations();
  }
}
