import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum TransactionType { pay, request }

class TransactionTypeState {
  final TransactionType type;
  final String amount;
  final bool isValidAmount;
  final String? errorMessage;

  TransactionTypeState({
    required this.type,
    this.amount = '',
    this.isValidAmount = false,
    this.errorMessage,
  });

  TransactionTypeState copyWith({
    TransactionType? type,
    String? amount,
    bool? isValidAmount,
    String? errorMessage,
  }) {
    return TransactionTypeState(
      type: type ?? this.type,
      amount: amount ?? this.amount,
      isValidAmount: isValidAmount ?? this.isValidAmount,
      errorMessage: errorMessage,
    );
  }
}

class TransactionTypeCubit extends Cubit<TransactionTypeState> {
  TransactionTypeCubit()
      : super(TransactionTypeState(type: TransactionType.pay));

  void setTransactionType(TransactionType type) {
    debugPrint('Setting transaction type to: $type');
    emit(state.copyWith(type: type));
  }

  void setAmount(String value) {
    // Check for negative numbers
    if (value.contains('-')) {
      emit(state.copyWith(errorMessage: 'Negative amounts are not allowed'));
      return;
    }

    // Check for multiple decimal points
    if (value.split('.').length > 2) {
      emit(state.copyWith(
          errorMessage: 'Invalid format: Only one decimal point allowed'));
      return;
    }

    // Remove any non-digit characters except decimal point
    String cleanValue = value.replaceAll(RegExp(r'[^0-9.]'), '');

    // Handle decimal places
    if (cleanValue.contains('.')) {
      List<String> parts = cleanValue.split('.');
      if (parts[1].length > 2) {
        cleanValue = '${parts[0]}.${parts[1].substring(0, 2)}';
      }
    }

    // Check for zero amounts
    bool isZeroAmount =
        cleanValue == '0' || cleanValue == '0.0' || cleanValue == '0.00';

    emit(state.copyWith(
        amount: cleanValue,
        isValidAmount: !isZeroAmount && cleanValue.isNotEmpty,
        errorMessage: isZeroAmount ? 'Amount cannot be zero' : null));
  }

  bool validateAmount() {
    // Check for empty amount first
    if (state.amount.isEmpty) {
      emit(state.copyWith(
          isValidAmount: false, errorMessage: 'Please enter an amount'));
      return false;
    }

    // Check for zero amount
    if (state.amount == '0' ||
        state.amount == '0.0' ||
        state.amount == '0.00') {
      emit(state.copyWith(
          isValidAmount: false, errorMessage: 'Amount cannot be zero'));
      return false;
    }

    if (state.amount.contains('.')) {
      List<String> parts = state.amount.split('.');
      if (parts[1].length > 2) {
        emit(state.copyWith(
            isValidAmount: false,
            errorMessage: 'Invalid format: Only one decimal point allowed'));
        return false;
      }
    }
    // Validate format and decimal places
    bool isValid = RegExp(r'^\d+(\.\d{0,2})?$').hasMatch(state.amount);
    if (!isValid) {
      emit(state.copyWith(
          isValidAmount: false,
          errorMessage:
              'Please enter a valid amount with up to 2 decimal places'));
      return false;
    }

    emit(state.copyWith(isValidAmount: true, errorMessage: null));
    return true;
  }
}
