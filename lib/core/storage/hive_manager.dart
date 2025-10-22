import 'dart:io';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

import '../../features/payments/domain/check_beneficiary/check_beneficiary_entity.dart';
import '../../features/registration/data/register4_address/models/address_data_model.dart';
import '../../features/payments/data/check_beneficiary/model/local_beneficiary_model.dart';
import '../../features/dashboard/data/atm_locator/model/local_atm_model.dart';

class HiveManager {
  static HiveManager? _instance;
  static const String addressBoxName = 'addressBox';
  static const String beneficiaryBoxName = 'beneficiaryBox';
  static const String atmBoxName = 'atmBox';

  HiveManager._();

  static Future<HiveManager> getInstance() async {
    if (_instance == null) {
      _instance = HiveManager._();
      await _initHive();
    }
    return _instance!;
  }

  static Future<void> _initHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);

    // Register adapters
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(AddressDataModelAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(LocalBeneficiaryModelAdapter());
    }
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(LocalAtmModelAdapter());
    }

    // Open boxes
    await Hive.openBox<AddressDataModel>(addressBoxName);
    await Hive.openBox<LocalBeneficiaryModel>(beneficiaryBoxName);
    await Hive.openBox<LocalAtmModel>(atmBoxName);
  }

  // Get address box
  Box<AddressDataModel> get addressBox =>
      Hive.box<AddressDataModel>(addressBoxName);

  // Get beneficiary box
  Box<LocalBeneficiaryModel> get beneficiaryBox =>
      Hive.box<LocalBeneficiaryModel>(beneficiaryBoxName);

  // Get ATM box
  Box<LocalAtmModel> get atmBox => Hive.box<LocalAtmModel>(atmBoxName);

  // Save address data
  Future<void> saveAddressData(AddressDataModel addressData) async {
    debugPrint('📥 HiveManager: Saving address data');
    debugPrint('🔑 Key: ${addressData.refNumber}_${addressData.addressType}');

    // Use addressType as the key to ensure each type of address is unique
    await addressBox.put(
        '${addressData.refNumber}_${addressData.addressType}', addressData);

    // Verify the save
    final saved =
        addressBox.get('${addressData.refNumber}_${addressData.addressType}');
    debugPrint(
        '✅ HiveManager: Verification - ${saved != null ? 'Data saved successfully' : 'Save failed'}');
  }

  // Get all addresses for a reference number
  List<AddressDataModel> getAddressesForRef(String refNumber) {
    debugPrint('🔍 HiveManager: Getting addresses for ref: $refNumber');
    final addresses = addressBox.values
        .where((address) => address.refNumber == refNumber)
        .toList();
    debugPrint('📊 HiveManager: Found ${addresses.length} addresses');
    return addresses;
  }

  // Get specific address by type
  AddressDataModel? getAddressByType(String refNumber, String addressType) {
    debugPrint('🔍 HiveManager: Getting address by type: $addressType');
    final key = '${refNumber}_$addressType';
    final address = addressBox.get(key);
    debugPrint(
        '📍 HiveManager: ${address != null ? 'Address found' : 'Address not found'} for key: $key');
    return address;
  }

  // Check if an address exists
  bool addressExists(String refNumber, String addressType) {
    return addressBox.containsKey('${refNumber}_$addressType');
  }

  // Save image file and return the path
  Future<String> saveAddressProofImage(
    String refNumber,
    String addressType,
    File imageFile,
  ) async {
    // Create a unique filename with timestamp
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final directory = await getApplicationDocumentsDirectory();
    final path =
        '${directory.path}/address_proof_${refNumber}_${addressType}_$timestamp.jpg';

    // Copy the image file to the new path
    final savedFile = await imageFile.copy(path);

    // Delete old image if exists
    final existingAddress = getAddressByType(refNumber, addressType);
    if (existingAddress != null &&
        existingAddress.addressProofImagePath.isNotEmpty) {
      try {
        final oldFile = File(existingAddress.addressProofImagePath);
        if (oldFile.existsSync() && oldFile.path != savedFile.path) {
          await oldFile.delete();
        }
      } catch (e) {
        debugPrint('Error deleting old image: $e');
      }
    }

    return savedFile.path;
  }

  // Get image file from path
  File? getAddressProofImage(String imagePath) {
    if (imagePath.isEmpty) return null;

    final file = File(imagePath);
    if (file.existsSync()) {
      return file;
    }
    return null;
  }

  // Get application documents directory
  Future<Directory> getAppDocumentsDirectory() async {
    return await getApplicationDocumentsDirectory();
  }

  AddressDataModel? getSafeAddressByType(String refNumber, String addressType) {
    final key = '${refNumber}_$addressType';
    var data = addressBox.get(key);

    // If data exists but has wrong types, convert them
    if (data != null) {
      // Create a new model with the correct types
      return AddressDataModel(
        refNumber: data.refNumber,
        addressType: data.addressType,
        addressProof: data.addressProof,
        // Convert to int safely
        addressProofId: data.addressProofId is String
            ? int.tryParse(data.addressProofId.toString()) ?? 0
            : data.addressProofId,
        addressTypeId: data.addressTypeId is String
            ? int.tryParse(data.addressTypeId.toString()) ?? 0
            : data.addressTypeId,
        addressProofIdNumber: data.addressProofIdNumber,
        addressProofImagePath: data.addressProofImagePath,
        buildingName: data.buildingName,
        addressLine1: data.addressLine1,
        addressLine2: data.addressLine2,
        city: data.city,
        state: data.state,
        postalCode: data.postalCode,
        country: data.country,
      );
    }
    return null;
  }

  // Save beneficiaries
  Future<void> saveBeneficiaries(List<BeneficiaryEntity> beneficiaries) async {
    debugPrint('📥 HiveManager: Saving beneficiaries');
    final box = beneficiaryBox;
    await box.clear(); // Clear existing data

    final localModels =
        beneficiaries.map((e) => LocalBeneficiaryModel.fromEntity(e)).toList();

    await box.addAll(localModels);
    debugPrint('✅ HiveManager: Saved ${localModels.length} beneficiaries');
  }

  // Get all beneficiaries
  List<BeneficiaryEntity> getAllBeneficiaries() {
    debugPrint('🔍 HiveManager: Getting all beneficiaries');
    final beneficiaries =
        beneficiaryBox.values.map((model) => model.toEntity()).toList();
    debugPrint('📊 HiveManager: Found ${beneficiaries.length} beneficiaries');
    return beneficiaries;
  }
}
