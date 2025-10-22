import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_account_types/entity/account_sub_type_entity.dart';
import '../../domain/get_account_types/entity/account_type_entity.dart';
import '../../domain/get_account_types/entity/customer_type_entity.dart';

part 'customer_type_state.freezed.dart';

@freezed
class CustomerTypeState with _$CustomerTypeState {
  const factory CustomerTypeState.initial() = CustomerTypeInitial;

  const factory CustomerTypeState.loading() = CustomerTypeLoading;

  const factory CustomerTypeState.loaded({
    required List<CustomerTypeEntity> customerTypes,
  }) = CustomerTypeLoaded;

  const factory CustomerTypeState.error({
    required String message,
  }) = CustomerTypeError;

  const factory CustomerTypeState.unavailable({
    required String message,
  }) = CustomerTypeUnavailable;

  const factory CustomerTypeState.accountTypeInitial() =
      AccountTypeInitialState;

  const factory CustomerTypeState.accountTypeLoading() =
      AccountTypeLoadingState;

  const factory CustomerTypeState.accountTypeLoaded({
    required List<AccountTypeEntity> accountTypes,
  }) = AccountTypeLoadedState;

  const factory CustomerTypeState.accountTypeUnavailable({
    required String message,
  }) = AccountTypeUnavailable;

  const factory CustomerTypeState.accountTypeError({
    required String message,
  }) = AccountTypeErrorState;

  const factory CustomerTypeState.accountSubTypeInitial() =
      AccountSubTypeInitialState;

  const factory CustomerTypeState.accountSubTypeLoading() =
      AccountSubTypeLoadingState;

  const factory CustomerTypeState.accountSubTypeLoaded({
    required List<AccountSubTypeEntity> accountSubTypes,
  }) = AccountSubTypeLoadedState;

  const factory CustomerTypeState.accountSubTypeUnavailable({
    required String message,
  }) = AccountSubTypeUnavailable;

  const factory CustomerTypeState.accountSubTypeError({
    required String message,
  }) = AccountSubTypeErrorState;

  const factory CustomerTypeState.serverDownError({
    required String message,
  }) = CustomerTypeServerDownError;
}
