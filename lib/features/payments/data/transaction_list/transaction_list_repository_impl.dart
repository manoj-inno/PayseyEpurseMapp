import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exception/exceptions.dart';
import 'transaction_list_datasource.dart';
import 'transaction_list_model.dart';
import 'transaction_list_repository.dart';

class TransactionListRepositoryImpl implements TransactionListRepository {
  final TransactionListDataSource dataSource;

  TransactionListRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, TransactionListResponseModel>> getTransactionList(
    TransactionListRequestModel request,
  ) async {
    try {
      debugPrint("_______________TRANSACTION LIST REPOSITORY______________");
      debugPrint("Getting transaction list for beneficiary: ${request.beneficiaryId}, page: ${request.page}");
      
      final response = await dataSource.getTransactionList(request);
      
      debugPrint("Transaction list response received:");
      debugPrint("- Status: ${response.status}");
      debugPrint("- Code: ${response.code}");
      debugPrint("- Message: ${response.message}");
      debugPrint("- Data count: ${response.data.length}");
      
      // Check if the API call was successful
      if (response.code == 1 && response.status == "Success") {
        debugPrint("✅ Transaction list fetched successfully");
        return Right(response);
      } else {
        debugPrint("❌ API returned error: ${response.message}");
        return Left(ServerFailure(message: response.message));
      }
    } on ServerException catch (e) {
      debugPrint("❌ Server exception in getTransactionList: ${e.message}");
      return Left(ServerFailure(message: e.message));
    } on NetworkException catch (e) {
      debugPrint("❌ Network exception in getTransactionList: ${e.message}");
      return Left(NetworkFailure(message: e.message));
    } catch (e) {
      debugPrint("❌ Unexpected error in getTransactionList: $e");
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
