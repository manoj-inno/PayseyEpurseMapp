import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import 'transaction_transfer_datasource.dart';
import 'transaction_transfer_model.dart';
import 'transaction_transfer_repository.dart';

class TransactionTransferRepositoryImpl implements TransactionTransferRepository {
  final TransactionTransferDataSource dataSource;

  TransactionTransferRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, TransactionTransferResponseModel>> transferMoney(
    TransactionTransferRequestModel request,
  ) async {
    try {
      debugPrint("🔄 Repository: Starting transaction transfer");
      final result = await dataSource.transferMoney(request);
      
      // Check if the response indicates success
      if (result.status.toLowerCase() == 'success') {
        debugPrint("✅ Repository: Transaction transfer completed successfully");
        return Right(result);
      } else {
        debugPrint("❌ Repository: Transaction transfer failed: ${result.message}");
        return Left(ServerFailure(
          message: result.message,
          statusCode: result.code,
        ));
      }
    } catch (e) {
      debugPrint("❌ Repository: Transaction transfer error: $e");
      return Left(ServerFailure(
        message: e.toString(),
        statusCode: 500,
      ));
    }
  }
}
