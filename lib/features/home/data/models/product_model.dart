class ProductModel {
  final int indexatDatabase;
  final String productName;
  final double price;
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
