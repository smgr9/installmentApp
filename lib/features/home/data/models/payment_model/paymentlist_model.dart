import 'package:hive_flutter/hive_flutter.dart';
part 'paymentlist_model.g.dart';

@HiveType(typeId: 3)
class Paymentlist {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String date;
  @HiveField(3)
  final double collected;

  Paymentlist({
    required this.id,
    required this.date,
    required this.collected,
  });
}
