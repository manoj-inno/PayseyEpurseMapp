import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import 'entity/account_sub_type_entity.dart';
import 'entity/account_type_entity.dart';
import 'entity/customer_type_entity.dart';

abstract class CustomerTypeRepository {
  Future<Either<Failure, List<CustomerTypeEntity>>> getCustomerTypes();
  Future<Either<Failure, List<AccountTypeEntity>>> getAccountTypes();
  Future<Either<Failure, List<AccountSubTypeEntity>>> getAccountSubTypes(
      int accountTypeId, int customerTypeId);
}
