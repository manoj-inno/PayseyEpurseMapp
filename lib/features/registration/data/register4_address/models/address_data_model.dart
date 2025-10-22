import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'address_data_model.freezed.dart';
part 'address_data_model.g.dart';

@freezed
@HiveType(typeId: 1, adapterName: 'AddressDataModelAdapter')
class AddressDataModel with _$AddressDataModel {
  const factory AddressDataModel({
    @HiveField(0) required String refNumber,
    @HiveField(1) required String addressType,
    @HiveField(2) required int addressTypeId,
    @HiveField(3) required String addressProof,
    @HiveField(4) required int addressProofId,
    @HiveField(5) required String addressProofIdNumber,
    @HiveField(6) required String addressProofImagePath,
    @HiveField(7) required String buildingName,
    @HiveField(8) required String addressLine1,
    @HiveField(9) required String addressLine2,
    @HiveField(10) required String city,
    @HiveField(11) required String state,
    @HiveField(12) required String postalCode,
    @HiveField(13) required String country,
  }) = _AddressDataModel;

  factory AddressDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddressDataModelFromJson(json);
}
