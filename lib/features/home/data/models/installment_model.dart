import 'paymentlist_model.dart';

//////////////////////

class InstallmentModel {
  final int id;
  final String date;
  final double totalamount;
  final bool complete;
  final List<Paymentlist> paymentlist;
  final String aymentdeadline;
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
