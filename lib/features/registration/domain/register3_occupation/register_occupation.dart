import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register3_occupation/models/register_occupation_model.dart';
import 'register_occupation_repo.dart';

class RegisterOccupationUseCase {
  final RegisterOccupationRepository repository;

  RegisterOccupationUseCase({required this.repository});

  Future<Either<Failure, RegisterOccupationResponseModel>> call(
      RegisterOccupationModel occupation) {
    return repository.registerOccupation(occupation);
  }
}
