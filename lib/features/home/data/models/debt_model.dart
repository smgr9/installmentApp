import 'package:first_temp/features/home/data/models/paymentlist_model.dart';
import 'package:first_temp/features/home/data/models/product_model.dart';

class DebtModel {
  final int? id;
  final String? date;
  final List<ProductModel> product;
  final double prepaidExpenses;
  final List<Paymentlist> paymentList;
  final double totalamount;

  DebtModel({
    required this.paymentList,
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
        paymentList: paymentList,
        totalamount: totalamount);
  }

  @override
  String toString() {
    return '''\n Debt(\n
    id: $id,
    \n dataAddion: $date,
    \n product: $product,
    \n prepaidExpenses: $prepaidExpenses,
    \n paymentList: $paymentList,
    \ntotalamount: $totalamount,\n)''';
  }
}
