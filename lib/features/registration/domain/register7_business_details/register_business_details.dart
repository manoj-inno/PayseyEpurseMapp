import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register7_business_details/register_business_details_model.dart';
import 'register_business_details_repo.dart';

class RegisterBusinessUseCase {
  final RegisterBusinessRepository repository;

  RegisterBusinessUseCase({required this.repository});

  Future<Either<Failure, RegisterBusinessResponseModel>> call(
      RegisterBusinessRequestModel request) {
    return repository.registerBusiness(request);
  }
}
