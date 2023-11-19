import 'package:first_temp/features/home/data/models/product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductTypeAdapter extends TypeAdapter<ProductModel> {
  @override
  ProductModel read(BinaryReader reader) {
    return ProductModel(
      indexatDatabase: reader.readInt(),
      productName: reader.readString(),
      price: reader.readDouble(),
      quantity: reader.readInt(),
    );
  }

  @override
  int get typeId => 2;

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeInt(obj.indexatDatabase)
      ..writeString(obj.productName)
      ..writeDouble(obj.price)
      ..writeInt(obj.quantity);
  }
}
