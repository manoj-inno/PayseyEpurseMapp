import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/exception/exception_handler.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/check_beneficiary/check_beneficiary_entity.dart';
import '../../domain/check_beneficiary/check_beneficiary_repo.dart';
import 'datasource/check_beneficiary_remote_datasource.dart';
import 'model/remote_beneficiary_model.dart';
import 'datasource/check_beneficiary_local_datasource.dart';
import '../../../../core/network/network_info.dart';

class BeneficiaryRepositoryImpl implements BeneficiaryRepository {
  final BeneficiaryRemoteDataSource remoteDataSource;
  final BeneficiaryLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  BeneficiaryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<BeneficiaryEntity>>> checkBeneficiary(
      CheckBeneficiaryRequest request) async {
    debugPrint("Network Info: ${await networkInfo.isConnected}");

    // Try to get data from remote source with proper error handling
    final remoteResult = await ExceptionHandler.handleApiCall(
      () => remoteDataSource.checkBeneficiary(request),
    );

    return remoteResult.fold(
      (failure) async {
        // If remote call fails with specific network errors, try local data
        if (failure is ServerDownFailure || !(await networkInfo.isConnected)) {
          try {
            final localBeneficiaries = await localDataSource.getBeneficiaries();
            return Right(localBeneficiaries);
          } catch (cacheError) {
            return Left(CacheFailure(message: 'No cached data available'));
          }
        }
        // For other types of failures, just return the failure
        return Left(failure);
      },
      (response) async {
        // Save successful response to local storage
        await localDataSource.saveBeneficiaries(response.beneficiaries);
        return Right(response.beneficiaries);
      },
    );
  }
}
