import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/get_address_details/entities/address_proof_entity.dart';
import '../../domain/get_address_details/entities/address_type_entity.dart';

part 'get_address_details_state.freezed.dart';

@freezed
class GetAddressDetailsState with _$GetAddressDetailsState {
  const factory GetAddressDetailsState.initial() = GetAddressDetailsInitial;

  const factory GetAddressDetailsState.addressTypesLoading() =
      GetAddressTypesLoading;

  const factory GetAddressDetailsState.addressTypesLoaded({
    required List<AddressTypeEntity> addressTypes,
  }) = GetAddressTypesLoaded;

  const factory GetAddressDetailsState.addressProofsLoading() =
      GetAddressProofsLoading;

  const factory GetAddressDetailsState.addressProofsLoaded({
    required List<AddressProofEntity> addressProofs,
  }) = GetAddressProofsLoaded;

  const factory GetAddressDetailsState.addressTypesError({
    required Failure failure,
  }) = GetAddressTypesError;

  const factory GetAddressDetailsState.addressProofsError({
    required Failure failure,
  }) = GetAddressProofsError;

  const factory GetAddressDetailsState.serverDown({
    required String message,
  }) = GetAddressDetailsServerDown;
}
