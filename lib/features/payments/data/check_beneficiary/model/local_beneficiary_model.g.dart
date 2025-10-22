// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_beneficiary_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalBeneficiaryModelAdapter extends TypeAdapter<LocalBeneficiaryModel> {
  @override
  final typeId = 2;

  @override
  LocalBeneficiaryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalBeneficiaryModel(
      firstName: fields[0] as String,
      lastName: fields[1] as String,
      middleName: fields[2] as String,
      label: fields[3] as String,
      mobile: fields[4] as String,
      userId: (fields[5] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, LocalBeneficiaryModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.middleName)
      ..writeByte(3)
      ..write(obj.label)
      ..writeByte(4)
      ..write(obj.mobile)
      ..writeByte(5)
      ..write(obj.userId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalBeneficiaryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
