import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/get_account_types/customer_type_repo.dart';
import '../../domain/get_account_types/entity/account_sub_type_entity.dart';
import '../../domain/get_account_types/entity/account_type_entity.dart';
import '../../domain/get_account_types/entity/customer_type_entity.dart';
import 'customer_type_datasource.dart';

class CustomerTypeRepositoryImpl implements CustomerTypeRepository {
  final CustomerTypeRemoteDataSource remoteDataSource;

  CustomerTypeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CustomerTypeEntity>>> getCustomerTypes() async {
    return ExceptionHandler.handleApiCall(() async {
      final models = await remoteDataSource.fetchCustomerTypes();
      return models
          .map((model) => CustomerTypeEntity(
                id: model.id,
                typeName: model.typeName,
                description: model.description,
                status: model.status,
              ))
          .toList();
    });
  }

  @override
  Future<Either<Failure, List<AccountTypeEntity>>> getAccountTypes() async {
    return ExceptionHandler.handleApiCall(() async {
      final accountTypes = await remoteDataSource.getAccountTypes();
      return accountTypes
          .map((accountType) => AccountTypeEntity(
                id: accountType.id,
                typeName: accountType.typeName,
                description: accountType.description,
                status: accountType.status,
              ))
          .toList();
    });
  }

  @override
  Future<Either<Failure, List<AccountSubTypeEntity>>> getAccountSubTypes(
      int accountTypeId, int customerTypeId) async {
    return ExceptionHandler.handleApiCall(() async {
      final models = await remoteDataSource.getAccountSubTypes(
          accountTypeId, customerTypeId);
      return models
          .map((model) => AccountSubTypeEntity(
                id: model.id,
                accountTypeId: model.accountTypeId,
                customerTypeId: model.customerTypeId,
                subtypeName: model.subtypeName,
                description: model.description,
                status: model.status,
              ))
          .toList();
    });
  }
}
