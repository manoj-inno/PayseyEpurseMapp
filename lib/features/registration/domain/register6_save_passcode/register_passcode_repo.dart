import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register6_save_passcode/model/register_passcode_model.dart';
import 'entity/complete_reg_entity.dart';
import 'entity/register_passcode_entity.dart';

abstract class SavePasscodeRepository {
  Future<Either<Failure, SavePasscodeEntity>> savePasscode(
      SavePasscodeRequestModel requestModel);
  Future<Either<Failure, RegistrationEntity>> completeRegistration(
      String userRef);
}
