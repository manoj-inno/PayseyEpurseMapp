import '../../../../core/errors/failures.dart';
import 'entity/occupation_entity.dart';
import 'entity/source_fund_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetOccupationDetailsRepo {
  Future<Either<Failure, List<OccupationEntity>>> getOccupationDetails();
  Future<Either<Failure, List<SourceFundEntity>>> getSourceFundDetails();
}
