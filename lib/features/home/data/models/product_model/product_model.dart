import 'package:hive_flutter/hive_flutter.dart';

part 'product_model.g.dart';

@HiveType(typeId: 4)
class ProductModel {
  @HiveField(0)
  final int indexatDatabase;
  @HiveField(1)
  final String productName;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final int quantity;

  ProductModel(
      {required this.indexatDatabase,
      required this.productName,
      required this.price,
      required this.quantity});

  @override
  String toString() {
    return '''\nProduct(
      \nindexatDatabase: $indexatDatabase,
    \n productName: $productName,
    \n price: $price,
    \n quantity: $quantity\n)''';
  }
}
