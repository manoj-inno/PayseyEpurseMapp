import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../data/login/login_model.dart';
import '../../domain/login/login_entity.dart';
import '../../domain/login/login_repo.dart';
import '../login/login_datasource.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource remoteDataSource;

  LoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, LoginEntity>> login(LoginRequestModel request) async {
    return await ExceptionHandler.handleApiCall<LoginEntity>(() async {
      final response = await remoteDataSource.login(request);
      return response;
    });
  }
}
