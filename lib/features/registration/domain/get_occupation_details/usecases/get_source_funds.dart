import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../get_occupation_details_repo.dart';
import '../entity/source_fund_entity.dart';

class GetSourceFunds {
  final GetOccupationDetailsRepo repo;

  GetSourceFunds({required this.repo});

  Future<Either<Failure, List<SourceFundEntity>>> call() async {
    return await repo.getSourceFundDetails();
  }
}
