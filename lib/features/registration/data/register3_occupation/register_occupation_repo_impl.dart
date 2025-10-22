import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/register3_occupation/register_occupation_repo.dart';
import 'register_occupation_datasource.dart';
import 'models/register_occupation_model.dart';

class RegisterOccupationRepositoryImpl implements RegisterOccupationRepository {
  final RegisterOccupationRemoteDataSource remoteDataSource;

  RegisterOccupationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, RegisterOccupationResponseModel>> registerOccupation(
      RegisterOccupationModel occupation) async {
    return ExceptionHandler.handleApiCall(() async {
      final result = await remoteDataSource.registerOccupation(occupation);
      return result;
    });
  }
}
