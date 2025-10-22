import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../data/get_personal_details/models/qualification_model.dart';
import '../get_personal_details_repo.dart';

class GetQualifications {
  final GetPersonalDetailsRepo repository;

  GetQualifications(this.repository);

  Future<Either<Failure, List<QualificationModel>>> call() async {
    return await repository.getQualification();
  }
}
