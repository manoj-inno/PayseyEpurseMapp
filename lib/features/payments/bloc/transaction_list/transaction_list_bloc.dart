import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../data/transaction_list/transaction_list_model.dart';
import '../../data/transaction_list/transaction_list_repository.dart';

part 'transaction_list_event.dart';
part 'transaction_list_state.dart';

class TransactionListBloc extends Bloc<TransactionListEvent, TransactionListState> {
  final TransactionListRepository repository;

  TransactionListBloc({required this.repository}) : super(TransactionListInitial()) {
    on<LoadTransactionList>(_onLoadTransactionList);
    on<LoadMoreTransactions>(_onLoadMoreTransactions);
    on<RefreshTransactionList>(_onRefreshTransactionList);
  }

  Future<void> _onLoadTransactionList(
    LoadTransactionList event,
    Emitter<TransactionListState> emit,
  ) async {
    debugPrint("______________TRANSACTION LIST BLOC - LOAD TRANSACTIONS____________");
    debugPrint("Beneficiary ID: ${event.beneficiaryId}");
    debugPrint("Current User ID: ${event.currentUserId}");

    emit(TransactionListLoading());

    try {
      final request = TransactionListRequestModel(
        beneficiaryId: event.beneficiaryId,
        page: 1,
        noOfData: 15,
        successOnly: true,
      );

      final result = await repository.getTransactionList(request);

      result.fold(
        (failure) {
          debugPrint("❌ Failed to load transactions: ${failure.message}");
          emit(TransactionListError(message: failure.message));
        },
        (response) {
          debugPrint("✅ Transactions loaded successfully");
          debugPrint("✅ Transaction count: ${response.data.length}");
          
          emit(TransactionListLoaded(
            transactions: response.data,
            currentPage: 1,
            hasReachedMax: response.data.length < 15,
            isLoadingMore: false,
            beneficiaryId: event.beneficiaryId,
            currentUserId: event.currentUserId,
          ));
        },
      );
    } catch (e) {
      debugPrint("❌ Error in _onLoadTransactionList: $e");
      emit(TransactionListError(message: e.toString()));
    }
  }

  Future<void> _onLoadMoreTransactions(
    LoadMoreTransactions event,
    Emitter<TransactionListState> emit,
  ) async {
    debugPrint("______________TRANSACTION LIST BLOC - LOAD MORE TRANSACTIONS____________");

    if (state is TransactionListLoaded) {
      final currentState = state as TransactionListLoaded;
      
      if (currentState.isLoadingMore || currentState.hasReachedMax) {
        debugPrint("⚠️ Cannot load more - already loading or reached max");
        return;
      }

      debugPrint("Loading page ${currentState.currentPage + 1}");

      emit(currentState.copyWith(isLoadingMore: true));

      try {
        final request = TransactionListRequestModel(
          beneficiaryId: currentState.beneficiaryId,
          page: currentState.currentPage + 1,
          noOfData: 15,
          successOnly: true,
        );

        final result = await repository.getTransactionList(request);

        result.fold(
          (failure) {
            debugPrint("❌ Failed to load more transactions: ${failure.message}");
            emit(currentState.copyWith(isLoadingMore: false));
          },
          (response) {
            debugPrint("✅ More transactions loaded successfully");
            debugPrint("✅ New transaction count: ${response.data.length}");
            
            final allTransactions = [...currentState.transactions, ...response.data];
            final hasReachedMax = response.data.length < 15;
            
            emit(currentState.copyWith(
              transactions: allTransactions,
              currentPage: currentState.currentPage + 1,
              hasReachedMax: hasReachedMax,
              isLoadingMore: false,
            ));
          },
        );
      } catch (e) {
        debugPrint("❌ Error in _onLoadMoreTransactions: $e");
        emit(currentState.copyWith(isLoadingMore: false));
      }
    }
  }

  Future<void> _onRefreshTransactionList(
    RefreshTransactionList event,
    Emitter<TransactionListState> emit,
  ) async {
    debugPrint("______________TRANSACTION LIST BLOC - REFRESH TRANSACTIONS____________");
    debugPrint("Refreshing transactions for beneficiary: ${event.beneficiaryId}");

    // Reset to initial state and load fresh data
    add(LoadTransactionList(
      beneficiaryId: event.beneficiaryId,
      currentUserId: event.currentUserId,
    ));
  }
}
