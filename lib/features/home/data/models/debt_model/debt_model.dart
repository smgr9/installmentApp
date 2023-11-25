import 'package:first_temp/features/home/data/models/installment_model/installment_model.dart';
import 'package:first_temp/features/home/data/models/product_model/product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'debt_model.g.dart';

@HiveType(typeId: 1)
class DebtModel {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? date;
  @HiveField(2)
  final List<ProductModel> product;
  @HiveField(3)
  final double prepaidExpenses;
  @HiveField(4)
  final List<InstallmentModel> installment;
  @HiveField(5)
  final double totalamount;

  DebtModel({
    required this.installment,
    this.id,
    this.date,
    required this.product,
    required this.prepaidExpenses,
    required this.totalamount,
  });

  DebtModel decrementIndexAtDatabase() {
    return DebtModel(
        id: id! - 1,
        date: date,
        product: product,
        prepaidExpenses: prepaidExpenses,
        installment: installment,
        totalamount: totalamount);
  }

  @override
  String toString() {
    return '''\n Debt(\n
    id: $id,
    \n dataAddion: $date,
    \n product: $product,
    \n prepaidExpenses: $prepaidExpenses,
    \n installment: $installment,
    \ntotalamount: $totalamount,\n)''';
  }
}
