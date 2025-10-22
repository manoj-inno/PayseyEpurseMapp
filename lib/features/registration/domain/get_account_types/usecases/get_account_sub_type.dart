import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../customer_type_repo.dart';
import '../entity/account_sub_type_entity.dart';

class GetAccountSubTypesUseCase {
  final CustomerTypeRepository repository;

  GetAccountSubTypesUseCase({required this.repository});

  Future<Either<Failure, List<AccountSubTypeEntity>>> execute(
      int accountTypeId, int customerTypeId) async {
    return await repository.getAccountSubTypes(accountTypeId, customerTypeId);
  }
}
