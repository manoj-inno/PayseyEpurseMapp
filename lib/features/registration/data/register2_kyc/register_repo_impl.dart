import 'package:dartz/dartz.dart';
import 'package:epurse/core/errors/failures.dart';
import 'package:epurse/core/errors/exception/exception_handler.dart';
import 'package:epurse/features/registration/data/register2_kyc/register_kyc_datasource.dart';
import 'package:epurse/features/registration/domain/register2_kyc/entities/register_kyc_entity.dart';
import 'package:epurse/features/registration/domain/register2_kyc/register_kyc_repo.dart';

import 'models/register_kyc_model.dart';

class RegisterKycRepositoryImpl implements RegisterKycRepository {
  final RegisterKycRemoteDataSource remoteDataSource;
  RegisterKycRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, RegisterKycEntity>> registerKyc(
      RegisterKycRequestModel request) async {
    return ExceptionHandler.handleApiCall(() async {
      final response = await remoteDataSource.registerKyc(request);
      return response.toEntity();
    });
  }
}
