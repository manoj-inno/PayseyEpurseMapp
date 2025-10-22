import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/register6_save_passcode/model/register_passcode_model.dart';
import '../entity/register_passcode_entity.dart';
import '../register_passcode_repo.dart';

class SavePasscodeUseCase {
  final SavePasscodeRepository repository;

  SavePasscodeUseCase(this.repository);

  Future<Either<Failure, SavePasscodeEntity>> call(
      SavePasscodeRequestModel requestModel) async {
    return await repository.savePasscode(requestModel);
  }
}
