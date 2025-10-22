import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../data/register5_pep/register_pep_datasource.dart';
import 'models/register_pep_model.dart';
import '../../domain/register5_pep/register_pep_repo.dart';

class RegisterPepRepoImpl implements RegisterPepRepo {
  final RegisterPepRemoteDataSource remoteDataSource;

  RegisterPepRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, RegisterPepResponseModel>> registerPep(
      RegisterPepRequestModel pep) async {
    return ExceptionHandler.handleApiCall(() async {
      final result = await remoteDataSource.registerPep(pep);
      return result;
    });
  }
}
