import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/register4_address/models/register_address_model.dart';
import 'register_address_entity.dart';
import 'register_address_repo.dart';

class RegisterAddressUseCase {
  final RegisterAddressRepository repository;

  RegisterAddressUseCase(this.repository);

  Future<Either<Failure, RegisterAddressEntity>> call(
      RegisterAddressRequestModel requestModel,
      String refNumber,
      String customerTypeId) {
    return repository.submitAddress(requestModel, refNumber, customerTypeId);
  }
}
