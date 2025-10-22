import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/get_account_types/usecases/get_account_sub_type.dart';
import '../../domain/get_account_types/usecases/get_account_type.dart';
import '../../domain/get_account_types/usecases/get_customer_type.dart';
import 'customer_type_event.dart';
import 'customer_type_state.dart';

class CustomerTypeBloc extends Bloc<CustomerTypeEvent, CustomerTypeState> {
  final GetCustomerTypes getCustomerTypes;
  final GetAccountTypesUseCase getAccountTypesUseCase;
  final GetAccountSubTypesUseCase getAccountSubTypesUseCase;

  CustomerTypeBloc(
      {required this.getCustomerTypes,
      required this.getAccountTypesUseCase,
      required this.getAccountSubTypesUseCase})
      : super(CustomerTypeInitial()) {
    on<FetchCustomerTypes>((event, emit) async {
      emit(CustomerTypeLoading());

      debugPrint("__________CUSTOMER TYPE STATE____________");
      debugPrint(state.toString());

      final result = await getCustomerTypes();
      result.fold((failure) {
        debugPrint("__________CUSTOMER TYPE FAILURE____________");
        debugPrint(failure.toString());
        _handleFailure(failure, emit);
      }, (customerTypes) {
        if (customerTypes.isEmpty) {
          emit(
              const CustomerTypeUnavailable(message: 'No Customer Type Found'));
        } else {
          emit(CustomerTypeLoaded(customerTypes: customerTypes));
        }
      });

      debugPrint("__________CUSTOMER TYPE STATE____________");
      debugPrint(state.toString());
    });

    on<FetchAccountTypesEvent>((event, emit) async {
      emit(AccountTypeLoadingState());

      final result = await getAccountTypesUseCase();
      result.fold((failure) => _handleFailure(failure, emit), (accountTypes) {
        if (accountTypes.isEmpty) {
          emit(const AccountTypeUnavailable(message: 'No Account Type Found'));
        } else {
          emit(AccountTypeLoadedState(accountTypes: accountTypes));
        }
      });
    });

    on<GetAccountSubTypesEvent>((event, emit) async {
      emit(AccountSubTypeLoadingState());

      final result = await getAccountSubTypesUseCase.execute(
          event.accountTypeId, event.customerTypeId);

      result.fold((failure) => _handleFailure(failure, emit),
          (accountSubTypes) {
        if (accountSubTypes.isEmpty) {
          emit(const AccountSubTypeUnavailable(
              message:
                  'No Account Sub type available for Specific Customer Type and Account Type Selected'));
        } else {
          emit(AccountSubTypeLoadedState(accountSubTypes: accountSubTypes));
        }
      });
    });
  }

  void _handleFailure(Failure failure, Emitter<CustomerTypeState> emit) {
    debugPrint("__________HANDLING FAILURE____________");
    debugPrint(failure.runtimeType.toString());

    if (failure is ServerDownFailure) {
      debugPrint("__________SERVER DOWN FAILURE____________");
      emit(CustomerTypeServerDownError(
          message: 'Server is currently unavailable. Please try again later.'));
    } else if (failure is ServerFailure && failure.statusCode == 503) {
      debugPrint("__________SERVER FAILURE 503____________");
      emit(CustomerTypeServerDownError(
          message: 'Server is currently unavailable. Please try again later.'));
    } else {
      debugPrint("__________OTHER FAILURE____________");
      emit(CustomerTypeError(message: failure.message));
    }
  }
}
