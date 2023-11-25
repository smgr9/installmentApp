// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DebtModelAdapter extends TypeAdapter<DebtModel> {
  @override
  final int typeId = 1;

  @override
  DebtModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DebtModel(
      installment: (fields[4] as List).cast<InstallmentModel>(),
      id: fields[0] as int?,
      date: fields[1] as String?,
      product: (fields[2] as List).cast<ProductModel>(),
      prepaidExpenses: fields[3] as double,
      totalamount: fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, DebtModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.product)
      ..writeByte(3)
      ..write(obj.prepaidExpenses)
      ..writeByte(4)
      ..write(obj.installment)
      ..writeByte(5)
      ..write(obj.totalamount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DebtModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
