import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import 'transaction_transfer_model.dart';

abstract class TransactionTransferRepository {
  Future<Either<Failure, TransactionTransferResponseModel>> transferMoney(
    TransactionTransferRequestModel request,
  );
}
