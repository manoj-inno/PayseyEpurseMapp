import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../entities/salary_range_entity.dart';
import '../get_personal_details_repo.dart';

class GetSalaryRange {
  final GetPersonalDetailsRepo repo;

  GetSalaryRange(this.repo);

  Future<Either<Failure, List<SalaryRangeEntity>>> call() async {
    return await repo.getSalaryRanges();
  }
}
