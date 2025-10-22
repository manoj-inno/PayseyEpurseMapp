import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/get_personal_details/models/disability_model.dart';
import '../get_personal_details_repo.dart';

class GetDisabilities {
  final GetPersonalDetailsRepo repository;

  GetDisabilities(this.repository);

  Future<Either<Failure, List<DisabilityModel>>> call() async {
    return await repository.getDisability();
  }
}
