import 'package:dartz/dartz.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/errors/exception/exception_handler.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/atm_locator/atm_locator_entity.dart';
import '../../domain/atm_locator/atm_locator_repo.dart';
import 'datasource/atm_locator_remote_datasource.dart';
import 'datasource/atm_locator_local_datasource.dart';

class AtmRepositoryImpl implements AtmRepository {
  final AtmRemoteDataSource remoteDataSource;
  final AtmLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AtmRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<AtmLocation>>> getAtmLocations() async {
    // Use ExceptionHandler to handle the API call with proper error handling
    final remoteResult = await ExceptionHandler.handleApiCall(
        () => remoteDataSource.getAtmLocations());

    return remoteResult.fold(
      (failure) async {
        // If remote call fails with specific network errors, try local data
        if (failure is ServerDownFailure || !(await networkInfo.isConnected)) {
          try {
            final localAtms = await localDataSource.getAtmLocations();
            return Right(localAtms);
          } catch (cacheError) {
            return Left(
                CacheFailure(message: 'No cached ATM locations available'));
          }
        }
        // For other types of failures, just return the failure
        return Left(failure);
      },
      (remoteAtms) async {
        // Save successful data to local storage
        await localDataSource.cacheAtmLocations(remoteAtms);
        return Right(remoteAtms);
      },
    );
  }
}
