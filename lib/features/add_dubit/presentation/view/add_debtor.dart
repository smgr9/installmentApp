import 'package:first_temp/features/add_dubit/presentation/widget/add_debtor_body.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddDebtview extends StatelessWidget {
  final DobterModel installment;
  // static String id = "/add_debt";
  const AddDebtview({Key? key, required this.installment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).add_debtor),
      ),
      body: AddDebtBody(
        installment: installment,
      ),
    );
  }
}
