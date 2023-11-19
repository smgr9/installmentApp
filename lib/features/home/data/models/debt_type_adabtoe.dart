import 'package:first_temp/features/home/data/models/debt_model.dart';
import 'package:first_temp/features/home/data/models/paymentlist_model.dart';
import 'package:first_temp/features/home/data/models/product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DebtTypeAdapter extends TypeAdapter<DebtModel> {
  @override
  DebtModel read(BinaryReader reader) {
    return DebtModel(
      id: reader.readInt(),
      date: reader.readString(),
      product: reader.readList().cast<ProductModel>(),
      prepaidExpenses: reader.readDouble(),
      paymentList: reader.readList().cast<Paymentlist>(),
      totalamount: reader.readDouble(),
    );
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, DebtModel obj) {
    writer
      ..writeInt(obj.id!)
      ..writeString(obj.date!)
      ..writeList(obj.product)
      ..writeDouble(obj.prepaidExpenses)
      ..writeList(obj.paymentList)
      ..writeDouble(obj.totalamount);
  }
}
