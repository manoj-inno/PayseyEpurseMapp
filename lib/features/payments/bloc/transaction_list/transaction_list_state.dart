part of 'transaction_list_bloc.dart';

sealed class TransactionListState extends Equatable {
  const TransactionListState();

  @override
  List<Object> get props => [];
}

class TransactionListInitial extends TransactionListState {}

class TransactionListLoading extends TransactionListState {}

class TransactionListLoaded extends TransactionListState {
  final List<TransactionItemModel> transactions;
  final int currentPage;
  final bool hasReachedMax;
  final bool isLoadingMore;
  final int beneficiaryId;
  final int currentUserId;

  const TransactionListLoaded({
    required this.transactions,
    required this.currentPage,
    required this.hasReachedMax,
    required this.isLoadingMore,
    required this.beneficiaryId,
    required this.currentUserId,
  });

  TransactionListLoaded copyWith({
    List<TransactionItemModel>? transactions,
    int? currentPage,
    bool? hasReachedMax,
    bool? isLoadingMore,
    int? beneficiaryId,
    int? currentUserId,
  }) {
    return TransactionListLoaded(
      transactions: transactions ?? this.transactions,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      beneficiaryId: beneficiaryId ?? this.beneficiaryId,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }

  @override
  List<Object> get props => [
        transactions,
        currentPage,
        hasReachedMax,
        isLoadingMore,
        beneficiaryId,
        currentUserId,
      ];
}

class TransactionListError extends TransactionListState {
  final String message;

  const TransactionListError({required this.message});

  @override
  List<Object> get props => [message];
}
