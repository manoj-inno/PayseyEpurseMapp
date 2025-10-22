import '../../../../core/errors/failures.dart';
import 'entities/address_proof_entity.dart';
import 'entities/address_type_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetAddressDetailsRepo {
  Future<Either<Failure, List<AddressTypeEntity>>> getAddressTypes();
  Future<Either<Failure, List<AddressProofEntity>>> getAddressProofs();
}
