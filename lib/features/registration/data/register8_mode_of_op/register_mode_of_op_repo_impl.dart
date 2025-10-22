import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/register8_mode_of_op/register_mode_of_op_entity.dart';
import '../../domain/register8_mode_of_op/register_mode_of_op_repo.dart';
import 'register_mode_of_op_datasource.dart';
import 'register_mode_of_op_model.dart';

class RegisterModeOfOperationRepositoryImpl
    implements RegisterModeOfOperationRepository {
  final RegisterModeOfOperationRemoteDataSource dataSource;

  RegisterModeOfOperationRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, ModeOfOperationEntity>> registerModeOfOperation(
      ModeOfOperationRequestModel requestModel) async {
    return ExceptionHandler.handleApiCall(
        () => dataSource.registerModeOfOperation(requestModel));
  }
}
