import 'package:hive_flutter/hive_flutter.dart';
import '../payment_model/paymentlist_model.dart';
part 'installment_model.g.dart';

@HiveType(typeId: 2)
class InstallmentModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String date;
  @HiveField(2)
  final double totalamount;
  @HiveField(3)
  final bool complete;
  @HiveField(4)
  final List<Paymentlist> paymentlist;
  @HiveField(5)
  final String aymentdeadline;
  @HiveField(6)
  final int gracePeriod;

  InstallmentModel({
    required this.id,
    required this.date,
    required this.totalamount,
    required this.complete,
    required this.paymentlist,
    required this.aymentdeadline,
    required this.gracePeriod,
  });
}
