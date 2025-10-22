import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../customer_type_repo.dart';
import '../entity/customer_type_entity.dart';

class GetCustomerTypes {
  final CustomerTypeRepository repository;

  GetCustomerTypes({required this.repository});

  Future<Either<Failure, List<CustomerTypeEntity>>> call() async {
    return await repository.getCustomerTypes();
  }
}
