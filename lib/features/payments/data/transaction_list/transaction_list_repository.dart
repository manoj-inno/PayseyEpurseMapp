import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import 'transaction_list_model.dart';

abstract class TransactionListRepository {
  Future<Either<Failure, TransactionListResponseModel>> getTransactionList(
    TransactionListRequestModel request,
  );
}
