import 'package:dartz/dartz.dart';

import 'entities/business_type_entity.dart';
import 'entities/mode_of_operation_entity.dart';
import 'entities/turnover_entity.dart';

abstract class BusinessDetailsRepository {
  Future<Either<Exception, List<BusinessTypeEntity>>> getBusinessList();
  Future<Either<Exception, List<ModeOfOperationEntity>>> getModeOfOperations();
  Future<Either<Exception, List<TurnoverEntity>>> getTurnovers();
}
