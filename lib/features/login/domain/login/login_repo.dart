import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/login/login_model.dart';
import 'login_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginEntity>> login(LoginRequestModel request);
}
