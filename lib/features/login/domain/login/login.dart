import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/login/login_model.dart';
import 'login_entity.dart';
import 'login_repo.dart';

class LoginUseCase {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  Future<Either<Failure, LoginEntity>> call(LoginRequestModel request) async {
    return repository.login(request);
  }
}
