import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../customer_type_repo.dart';
import '../entity/account_type_entity.dart';

class GetAccountTypesUseCase {
  final CustomerTypeRepository repository;

  GetAccountTypesUseCase({required this.repository});

  Future<Either<Failure, List<AccountTypeEntity>>> call() async {
    return await repository.getAccountTypes();
  }
}
