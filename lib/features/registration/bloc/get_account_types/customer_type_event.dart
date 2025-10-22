import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_type_event.freezed.dart';

@freezed
class CustomerTypeEvent with _$CustomerTypeEvent {
  const factory CustomerTypeEvent.fetchCustomerTypes() = FetchCustomerTypes;

  const factory CustomerTypeEvent.fetchAccountTypes() = FetchAccountTypesEvent;

  const factory CustomerTypeEvent.getAccountSubTypes({
    required int accountTypeId,
    required int customerTypeId,
  }) = GetAccountSubTypesEvent;
}
