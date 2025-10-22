part of 'address_management_bloc.dart';

sealed class AddressManagementState extends Equatable {
  const AddressManagementState();

  @override
  List<Object> get props => [];
}

class AddressManagementInitial extends AddressManagementState {}

class AddressSaving extends AddressManagementState {}

class AddressSaved extends AddressManagementState {
  final String addressType;

  const AddressSaved({required this.addressType});

  @override
  List<Object> get props => [addressType];
}

class AddressesLoading extends AddressManagementState {}

class AddressesLoaded extends AddressManagementState {
  final List<AddressDataModel> addresses;

  const AddressesLoaded({required this.addresses});

  @override
  List<Object> get props => [addresses];
}

class AddressLoaded extends AddressManagementState {
  final AddressDataModel address;

  const AddressLoaded({required this.address});

  @override
  List<Object> get props => [address];
}

class AddressError extends AddressManagementState {
  final String message;

  const AddressError({required this.message});

  @override
  List<Object> get props => [message];
}
