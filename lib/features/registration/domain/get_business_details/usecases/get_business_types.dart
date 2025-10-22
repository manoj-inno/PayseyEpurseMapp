import 'package:dartz/dartz.dart';

import '../business_details_repo.dart';
import '../entities/business_type_entity.dart';

class GetBusinessTypesUseCase {
  final BusinessDetailsRepository repository;

  GetBusinessTypesUseCase(this.repository);

  Future<Either<Exception, List<BusinessTypeEntity>>> call() async {
    return await repository.getBusinessList();
  }
}
