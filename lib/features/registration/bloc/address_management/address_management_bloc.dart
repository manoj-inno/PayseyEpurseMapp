import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/storage/hive_manager.dart';
import '../../data/register4_address/models/address_data_model.dart';

part 'address_management_event.dart';
part 'address_management_state.dart';

class AddressManagementBloc
    extends Bloc<AddressManagementEvent, AddressManagementState> {
  final HiveManager hiveManager;

  AddressManagementBloc({required this.hiveManager})
      : super(AddressManagementInitial()) {
    on<SaveAddressData>(_onSaveAddressData);
    on<UpdateAddressData>(_onUpdateAddressData);
    on<LoadAddresses>(_onLoadAddresses);
    on<LoadAddressByType>(_onLoadAddressByType);
    on<ClearAllAddresses>(_onClearAllAddresses);
  }

  Future<void> _onSaveAddressData(
      SaveAddressData event, Emitter<AddressManagementState> emit) async {
    try {
      debugPrint('🔄 Starting to save address data');
      debugPrint('📝 Address Type: ${event.addressType}');
      debugPrint('📝 Reference Number: ${event.refNumber}');

      emit(AddressSaving());

      String imagePath = '';
      if (event.addressProofImage != null && !event.clearImagePath) {
        debugPrint('📸 Saving address proof image');
        imagePath = await hiveManager.saveAddressProofImage(
          event.refNumber,
          event.addressType,
          event.addressProofImage!,
        );
        debugPrint('💾 Image saved at: $imagePath');
      } else if (event.clearImagePath) {
        final existingAddress =
            hiveManager.getAddressByType(event.refNumber, event.addressType);
        if (existingAddress != null &&
            existingAddress.addressProofImagePath.isNotEmpty) {
          final existingFile = File(existingAddress.addressProofImagePath);
          if (existingFile.existsSync()) {
            try {
              existingFile.deleteSync();
            } catch (e) {
              debugPrint('Error deleting existing image file: $e');
            }
          }
        }
        imagePath = '';
      }

      final addressData = AddressDataModel(
        refNumber: event.refNumber,
        addressType: event.addressType,
        addressProof: event.addressProof,
        addressProofId: event.addressProofId,
        addressProofImagePath: imagePath,
        buildingName: event.buildingName,
        addressLine1: event.addressLine1,
        addressLine2: event.addressLine2,
        city: event.city,
        state: event.state,
        postalCode: event.postalCode,
        country: event.country,
        addressTypeId: event.addressTypeId,
        addressProofIdNumber: event.addressProofIdNumber,
      );

      debugPrint('📦 Saving address data to Hive');
      await hiveManager.saveAddressData(addressData);
      debugPrint('✅ Address data saved successfully');

      // Verify the save by retrieving it
      final savedAddress =
          hiveManager.getAddressByType(event.refNumber, event.addressType);
      debugPrint(
          '🔍 Verification - Retrieved saved address: ${savedAddress?.addressType}');

      emit(AddressSaved(addressType: event.addressType));
    } catch (e) {
      debugPrint('❌ Error saving address: $e');
      emit(AddressError(message: 'Failed to save address: $e'));
    }
  }

  Future<void> _onUpdateAddressData(
    UpdateAddressData event,
    Emitter<AddressManagementState> emit,
  ) async {
    try {
      debugPrint('🔄 Updating address data for type: ${event.addressType}');
      emit(AddressSaving());

      String imagePath = '';
      final existingAddress = hiveManager.getAddressByType(
        event.refNumber,
        event.addressType,
      );

      if (event.clearImagePath) {
        debugPrint('🗑️ Clearing image path due to clearImagePath flag');
        // Delete the existing image file if it exists
        if (existingAddress != null &&
            existingAddress.addressProofImagePath.isNotEmpty) {
          final existingFile = File(existingAddress.addressProofImagePath);
          if (existingFile.existsSync()) {
            try {
              existingFile.deleteSync();
              debugPrint(
                  '🗑️ Deleted existing image file: ${existingAddress.addressProofImagePath}');
            } catch (e) {
              debugPrint('Error deleting existing image file: $e');
            }
          }
        }
        // Set image path to empty
        imagePath = '';
      } else if (event.addressProofImage != null) {
        debugPrint('📸 Updating address proof image');
        imagePath = await hiveManager.saveAddressProofImage(
          event.refNumber,
          event.addressType,
          event.addressProofImage!,
        );
        debugPrint('💾 New image saved at: $imagePath');
      } else {
        // Keep the existing image path if no new image and not clearing
        imagePath = existingAddress?.addressProofImagePath ?? '';
        debugPrint('🖼️ Keeping existing image path: $imagePath');
      }

      final addressData = AddressDataModel(
        refNumber: event.refNumber,
        addressType: event.addressType,
        addressProof: event.addressProof,
        addressProofId: event.addressProofId,
        addressProofImagePath: imagePath,
        buildingName: event.buildingName,
        addressLine1: event.addressLine1,
        addressLine2: event.addressLine2,
        city: event.city,
        state: event.state,
        postalCode: event.postalCode,
        country: event.country,
        addressTypeId: event.addressTypeId,
        addressProofIdNumber: event.addressProofIdNumber,
      );

      await hiveManager.saveAddressData(addressData);
      debugPrint('✅ Address data updated successfully');

      // Verify the update
      final updatedAddress = hiveManager.getAddressByType(
        event.refNumber,
        event.addressType,
      );
      debugPrint(
          '🔍 Verification - Retrieved updated address: ${updatedAddress?.addressType}');
      debugPrint(
          '🔍 Updated image path: ${updatedAddress?.addressProofImagePath}');

      emit(AddressSaved(addressType: event.addressType));
    } catch (e) {
      debugPrint('❌ Error updating address: $e');
      emit(AddressError(message: 'Failed to update address: $e'));
    }
  }

  Future<void> _onLoadAddresses(
      LoadAddresses event, Emitter<AddressManagementState> emit) async {
    try {
      debugPrint('🔄 Loading addresses for ref: ${event.refNumber}');
      emit(AddressesLoading());

      final addresses = hiveManager.getAddressesForRef(event.refNumber);
      debugPrint('📋 Found ${addresses.length} addresses');
      for (var address in addresses) {
        debugPrint('📍 Address Type: ${address.addressType}');
        debugPrint('📍 Address Line 1: "${address.addressLine1}"');
        debugPrint('📍 Reference Number: "${address.refNumber}"');
      }

      emit(AddressesLoaded(addresses: addresses));
    } catch (e) {
      debugPrint('❌ Error loading addresses: $e');
      emit(AddressError(message: 'Failed to load addresses: $e'));
    }
  }

  Future<void> _onLoadAddressByType(
      LoadAddressByType event, Emitter<AddressManagementState> emit) async {
    try {
      debugPrint('🔄 Loading address by type: ${event.addressType}');
      emit(AddressesLoading());

      final address = hiveManager.getAddressByType(
        event.refNumber,
        event.addressType,
      );

      if (address != null) {
        debugPrint('✅ Address found: ${address.addressType}');
        emit(AddressLoaded(address: address));
      } else {
        debugPrint('⚠️ No address found for type: ${event.addressType}');
        emit(const AddressError(message: 'Address not found'));
      }
    } catch (e) {
      debugPrint('❌ Error loading address by type: $e');
      emit(AddressError(message: 'Failed to load address: $e'));
    }
  }

  Future<void> _onClearAllAddresses(
    ClearAllAddresses event,
    Emitter<AddressManagementState> emit,
  ) async {
    try {
      debugPrint('🗑️ Clearing all addresses for ref: ${event.refNumber}');
      emit(AddressesLoading());

      // Get all addresses for this reference number
      final addresses = hiveManager.getAddressesForRef(event.refNumber);

      // Delete each address
      for (final address in addresses) {
        final key = '${event.refNumber}_${address.addressType}';
        debugPrint('🗑️ Deleting address: $key');
        await hiveManager.addressBox.delete(key);
      }

      debugPrint('✅ All addresses cleared successfully');
      emit(AddressesLoaded(addresses: []));
    } catch (e) {
      debugPrint('❌ Error clearing addresses: $e');
      emit(AddressError(message: 'Failed to clear addresses: $e'));
    }
  }
}
