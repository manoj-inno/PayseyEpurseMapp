import 'package:dartz/dartz.dart';
import 'package:epurse/core/errors/failures.dart';
import 'package:epurse/features/registration/domain/register2_kyc/entities/register_kyc_entity.dart';

import '../../data/register2_kyc/models/register_kyc_model.dart';

abstract class RegisterKycRepository {
  Future<Either<Failure, RegisterKycEntity>> registerKyc(
      RegisterKycRequestModel request);
}
