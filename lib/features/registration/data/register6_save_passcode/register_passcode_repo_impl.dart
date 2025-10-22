import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/register6_save_passcode/entity/complete_reg_entity.dart';
import '../../domain/register6_save_passcode/entity/register_passcode_entity.dart';
import '../../domain/register6_save_passcode/register_passcode_repo.dart';
import 'register_passcode_datasource.dart';
import 'model/register_passcode_model.dart';

class SavePasscodeRepositoryImpl implements SavePasscodeRepository {
  final SavePasscodeRemoteDataSource remoteDataSource;

  SavePasscodeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, SavePasscodeEntity>> savePasscode(
      SavePasscodeRequestModel requestModel) async {
    return ExceptionHandler.handleApiCall(() async {
      final result = await remoteDataSource.savePasscode(requestModel);
      return result.toEntity();
    });
  }

  @override
  Future<Either<Failure, RegistrationEntity>> completeRegistration(
      String userRef) async {
    return ExceptionHandler.handleApiCall(() async {
      final result = await remoteDataSource.completeRegistration(userRef);
      return result.toEntity();
    });
  }
}
