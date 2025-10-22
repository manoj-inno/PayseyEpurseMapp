import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../domain/get_occupation_details/entity/occupation_entity.dart';
import '../../domain/get_occupation_details/entity/source_fund_entity.dart';
import '../../domain/get_occupation_details/get_occupation_details_repo.dart';
import 'get_occupation_details_datasource.dart';
import 'models/source_fund_model.dart';

class GetOccupationDetailsRepoImpl implements GetOccupationDetailsRepo {
  final GetOccupationDetailsDataSource occupationDataSource;

  GetOccupationDetailsRepoImpl({required this.occupationDataSource});

  @override
  Future<Either<Failure, List<OccupationEntity>>> getOccupationDetails() async {
    return ExceptionHandler.handleApiCall(() async {
      final models = await occupationDataSource.getOccupationDetails();
      return models
          .map((model) => OccupationEntity(
                id: model.id,
                occupationName: model.occupationName,
                description: model.description,
              ))
          .toList();
    });
  }

  @override
  Future<Either<Failure, List<SourceFundEntity>>> getSourceFundDetails() async {
    return ExceptionHandler.handleApiCall(() async {
      final List<SourceFundModel> models =
          await occupationDataSource.getSourceFundDetails();
      return models
          .map((model) => SourceFundEntity(
                id: model.id,
                sourceName: model.sourceName,
                description: model.description,
              ))
          .toList();
    });
  }
}
