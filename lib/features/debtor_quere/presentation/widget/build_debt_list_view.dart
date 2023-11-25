import 'package:first_temp/features/debtor_quere/presentation/widget/list_of_debt.dart';
import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:flutter/material.dart';

class BuildDebtListView extends StatelessWidget {
  const BuildDebtListView({
    super.key,
    required this.installment,
    this.debt,
  });

  final DobterModel installment;
  final List<DebtModel>? debt;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: installment.debts.length,
      itemBuilder: (context, index) {
        return ListofDebtItem(
          installmentModel: installment,
          debt: installment.debts[index],
        );
      },
    );
  }
}
