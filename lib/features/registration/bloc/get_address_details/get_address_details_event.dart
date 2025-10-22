import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_address_details_event.freezed.dart';

@freezed
class GetAddressDetailsEvent with _$GetAddressDetailsEvent {
  const factory GetAddressDetailsEvent.getAddressTypes({
    required int entityType,
  }) = GetAddressTypes;

  const factory GetAddressDetailsEvent.getAddressProofs({
    required int entityType,
  }) = GetAddressProofs;
}
