// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dobter_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DobterModelAdapter extends TypeAdapter<DobterModel> {
  @override
  final int typeId = 0;

  @override
  DobterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DobterModel(
      id: fields[0] as int,
      date: fields[1] as String,
      name: fields[2] as String,
      nationalId: fields[3] as String,
      phone: fields[4] as String,
      address: fields[5] as String,
      debts: (fields[6] as List).cast<DebtModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, DobterModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.nationalId)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.debts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DobterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
