// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentlist_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaymentlistAdapter extends TypeAdapter<Paymentlist> {
  @override
  final int typeId = 3;

  @override
  Paymentlist read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Paymentlist(
      id: fields[0] as int,
      date: fields[1] as String,
      collected: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Paymentlist obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.collected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentlistAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
