part of 'address_management_bloc.dart';

sealed class AddressManagementEvent extends Equatable {
  const AddressManagementEvent();

  @override
  List<Object> get props => [];
}

class SaveAddressData extends AddressManagementEvent {
  final String refNumber;
  final String addressType;
  final String addressProof;
  final int addressProofId;
  final File? addressProofImage;
  final String buildingName;
  final String addressLine1;
  final String addressLine2;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final int addressTypeId;
  final String addressProofIdNumber;
  final bool clearImagePath;

  const SaveAddressData({
    required this.refNumber,
    required this.addressType,
    required this.addressProof,
    required this.addressProofId,
    required this.addressProofImage,
    required this.buildingName,
    required this.addressLine1,
    required this.addressLine2,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    required this.addressTypeId,
    required this.addressProofIdNumber,
    required this.clearImagePath,
  });

  @override
  List<Object> get props => [
        refNumber,
        addressType,
        addressProof,
        addressProofId,
        buildingName,
        addressLine1,
        addressLine2,
        city,
        state,
        postalCode,
        country,
        addressTypeId,
        clearImagePath,
      ];
}

class UpdateAddressData extends AddressManagementEvent {
  final String refNumber;
  final String addressType;
  final String addressProof;
  final int addressProofId;
  final File? addressProofImage;
  final String buildingName;
  final String addressLine1;
  final String addressLine2;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final int addressTypeId;
  final String addressProofIdNumber;
  final bool clearImagePath;

  const UpdateAddressData({
    required this.refNumber,
    required this.addressType,
    required this.addressProof,
    required this.addressProofId,
    this.addressProofImage,
    required this.buildingName,
    required this.addressLine1,
    required this.addressLine2,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    required this.addressTypeId,
    required this.addressProofIdNumber,
    required this.clearImagePath,
  });

  @override
  List<Object> get props => [
        refNumber,
        addressType,
        addressProof,
        addressProofId,
        buildingName,
        addressLine1,
        addressLine2,
        city,
        state,
        postalCode,
        country,
        addressTypeId,
        clearImagePath,
      ];
}

class LoadAddresses extends AddressManagementEvent {
  final String refNumber;

  const LoadAddresses({required this.refNumber});

  @override
  List<Object> get props => [refNumber];
}

class LoadAddressByType extends AddressManagementEvent {
  final String refNumber;
  final String addressType;

  const LoadAddressByType({
    required this.refNumber,
    required this.addressType,
  });

  @override
  List<Object> get props => [refNumber, addressType];
}

class ClearAllAddresses extends AddressManagementEvent {
  final String refNumber;

  const ClearAllAddresses({required this.refNumber});

  @override
  List<Object> get props => [refNumber];
}
