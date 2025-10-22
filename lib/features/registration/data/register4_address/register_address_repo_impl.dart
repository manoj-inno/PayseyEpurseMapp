import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/register4_address/register_address_entity.dart';
import '../../domain/register4_address/register_address_repo.dart';
import 'models/register_address_model.dart';
import 'register_address_datasource.dart';

class RegisterAddressRepositoryImpl implements RegisterAddressRepository {
  final RegisterAddressRemoteDataSource remoteDataSource;

  RegisterAddressRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, RegisterAddressEntity>> submitAddress(
      RegisterAddressRequestModel requestModel,
      String refNumber,
      String customerTypeId) async {
    return ExceptionHandler.handleApiCall(() async {
      final response = await remoteDataSource.submitAddress(
          requestModel, refNumber, customerTypeId);
      return RegisterAddressEntity.fromModel(response);
    });
  }
}
