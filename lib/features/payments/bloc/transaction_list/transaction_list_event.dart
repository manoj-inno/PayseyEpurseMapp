part of 'transaction_list_bloc.dart';

sealed class TransactionListEvent extends Equatable {
  const TransactionListEvent();

  @override
  List<Object> get props => [];
}

class LoadTransactionList extends TransactionListEvent {
  final int beneficiaryId;
  final int currentUserId;

  const LoadTransactionList({
    required this.beneficiaryId,
    required this.currentUserId,
  });

  @override
  List<Object> get props => [beneficiaryId, currentUserId];
}

class LoadMoreTransactions extends TransactionListEvent {
  const LoadMoreTransactions();
}

class RefreshTransactionList extends TransactionListEvent {
  final int beneficiaryId;
  final int currentUserId;

  const RefreshTransactionList({
    required this.beneficiaryId,
    required this.currentUserId,
  });

  @override
  List<Object> get props => [beneficiaryId, currentUserId];
}
