import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/get_personal_details/models/gender_model.dart';
import '../get_personal_details_repo.dart';

class GetGenders {
  final GetPersonalDetailsRepo repository;

  GetGenders(this.repository);

  Future<Either<Failure, List<GenderModel>>> call() async {
    return await repository.getGenderList();
  }
}
