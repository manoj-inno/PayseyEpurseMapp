// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddressDataModelAdapter extends TypeAdapter<AddressDataModel> {
  @override
  final typeId = 1;

  @override
  AddressDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddressDataModel(
      refNumber: fields[0] as String,
      addressType: fields[1] as String,
      addressTypeId: (fields[2] as num).toInt(),
      addressProof: fields[3] as String,
      addressProofId: (fields[4] as num).toInt(),
      addressProofIdNumber: fields[5] as String,
      addressProofImagePath: fields[6] as String,
      buildingName: fields[7] as String,
      addressLine1: fields[8] as String,
      addressLine2: fields[9] as String,
      city: fields[10] as String,
      state: fields[11] as String,
      postalCode: fields[12] as String,
      country: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AddressDataModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.refNumber)
      ..writeByte(1)
      ..write(obj.addressType)
      ..writeByte(2)
      ..write(obj.addressTypeId)
      ..writeByte(3)
      ..write(obj.addressProof)
      ..writeByte(4)
      ..write(obj.addressProofId)
      ..writeByte(5)
      ..write(obj.addressProofIdNumber)
      ..writeByte(6)
      ..write(obj.addressProofImagePath)
      ..writeByte(7)
      ..write(obj.buildingName)
      ..writeByte(8)
      ..write(obj.addressLine1)
      ..writeByte(9)
      ..write(obj.addressLine2)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.state)
      ..writeByte(12)
      ..write(obj.postalCode)
      ..writeByte(13)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDataModelImpl _$$AddressDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDataModelImpl(
      refNumber: json['refNumber'] as String,
      addressType: json['addressType'] as String,
      addressTypeId: (json['addressTypeId'] as num).toInt(),
      addressProof: json['addressProof'] as String,
      addressProofId: (json['addressProofId'] as num).toInt(),
      addressProofIdNumber: json['addressProofIdNumber'] as String,
      addressProofImagePath: json['addressProofImagePath'] as String,
      buildingName: json['buildingName'] as String,
      addressLine1: json['addressLine1'] as String,
      addressLine2: json['addressLine2'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postalCode: json['postalCode'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$AddressDataModelImplToJson(
        _$AddressDataModelImpl instance) =>
    <String, dynamic>{
      'refNumber': instance.refNumber,
      'addressType': instance.addressType,
      'addressTypeId': instance.addressTypeId,
      'addressProof': instance.addressProof,
      'addressProofId': instance.addressProofId,
      'addressProofIdNumber': instance.addressProofIdNumber,
      'addressProofImagePath': instance.addressProofImagePath,
      'buildingName': instance.buildingName,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };
