import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failures.dart';

import '../entity/occupation_entity.dart';
import '../get_occupation_details_repo.dart';

class GetOccupations {
  final GetOccupationDetailsRepo repo;

  GetOccupations({required this.repo});

  Future<Either<Failure, List<OccupationEntity>>> call() async {
    return await repo.getOccupationDetails();
  }
}
