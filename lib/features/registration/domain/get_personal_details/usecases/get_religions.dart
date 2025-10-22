import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/get_personal_details/models/religion_model.dart';
import '../get_personal_details_repo.dart';

class GetReligions {
  final GetPersonalDetailsRepo repository;

  GetReligions(this.repository);

  Future<Either<Failure, List<ReligionModel>>> call() async {
    return await repository.getReligionList();
  }
}
