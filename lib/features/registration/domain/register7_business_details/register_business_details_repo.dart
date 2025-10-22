import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register7_business_details/register_business_details_model.dart';

abstract class RegisterBusinessRepository {
  Future<Either<Failure, RegisterBusinessResponseModel>> registerBusiness(
      RegisterBusinessRequestModel request);
}
