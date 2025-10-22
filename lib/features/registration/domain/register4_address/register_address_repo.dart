import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../data/register4_address/models/register_address_model.dart';
import 'register_address_entity.dart';

abstract class RegisterAddressRepository {
  Future<Either<Failure, RegisterAddressEntity>> submitAddress(
      RegisterAddressRequestModel requestModel,
      String refNumber,
      String customerTypeId);
}
