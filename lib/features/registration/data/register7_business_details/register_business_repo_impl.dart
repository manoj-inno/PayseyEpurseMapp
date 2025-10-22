import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/register7_business_details/register_business_details_repo.dart';
import 'register_business_details_datasource.dart';
import 'register_business_details_model.dart';

class RegisterBusinessRepositoryImpl implements RegisterBusinessRepository {
  final RegisterBusinessRemoteDataSource remoteDataSource;

  RegisterBusinessRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, RegisterBusinessResponseModel>> registerBusiness(
      RegisterBusinessRequestModel request) async {
    return ExceptionHandler.handleApiCall(() async {
      final result = await remoteDataSource.registerBusiness(request);
      return result;
    });
  }
}
