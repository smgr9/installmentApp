// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstallmentModelAdapter extends TypeAdapter<InstallmentModel> {
  @override
  final int typeId = 2;

  @override
  InstallmentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InstallmentModel(
      id: fields[0] as int,
      date: fields[1] as String,
      totalamount: fields[2] as double,
      complete: fields[3] as bool,
      paymentlist: (fields[4] as List).cast<Paymentlist>(),
      aymentdeadline: fields[5] as String,
      gracePeriod: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, InstallmentModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.totalamount)
      ..writeByte(3)
      ..write(obj.complete)
      ..writeByte(4)
      ..write(obj.paymentlist)
      ..writeByte(5)
      ..write(obj.aymentdeadline)
      ..writeByte(6)
      ..write(obj.gracePeriod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstallmentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
