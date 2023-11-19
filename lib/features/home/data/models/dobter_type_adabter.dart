import 'package:first_temp/features/home/data/models/debt_model.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class InstallmentTypeAdapter extends TypeAdapter<DobterModel> {
  @override
  read(BinaryReader reader) {
    return DobterModel(
      id: reader.readInt(),
      data: reader.readString(),
      name: reader.readString(),
      nationalId: reader.readString(),
      phone: reader.readString(),
      address: reader.toString(),
      debts: reader.readList().cast<DebtModel>(),
    );
  }

  @override
  int get typeId => 32;

  @override
  void write(BinaryWriter writer, obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.data);
    writer.writeString(obj.name);
    writer.writeString(obj.nationalId);
    writer.writeString(obj.phone);
    writer.writeString(obj.address);
    writer.writeList(obj.debts);
  }
}
