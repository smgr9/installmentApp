import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/add_dubit/presentation/widget/add_debtor_body.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddDebtview extends StatelessWidget {
  const AddDebtview({super.key, required this.installment});
  final InstallmentRec installment;
  // static String id = "/add_debt";

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
