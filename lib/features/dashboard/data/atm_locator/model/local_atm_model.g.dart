// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_atm_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalAtmModelAdapter extends TypeAdapter<LocalAtmModel> {
  @override
  final typeId = 3;

  @override
  LocalAtmModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalAtmModel(
      id: (fields[0] as num).toInt(),
      latitude: (fields[1] as num).toDouble(),
      longitude: (fields[2] as num).toDouble(),
      name: fields[3] as String,
      address: fields[4] as String,
      availableCash: fields[5] as bool,
      status: (fields[6] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, LocalAtmModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.availableCash)
      ..writeByte(6)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalAtmModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
