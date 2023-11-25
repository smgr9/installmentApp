import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_debt_list_tile.dart';

class DebtDataView extends StatelessWidget {
  final DobterModel installmentModel;
  final DebtModel debt;
  const DebtDataView(
      {Key? key, required this.debt, required this.installmentModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debt Viewer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // WriteDebtorCubit.get(context)
              //     .delDebt(installmentModel.id, debt.id);
              WriteDebtorCubit.get(context).addDebt(installmentModel.id);
              ReadDebtorCubit.get(context).getDebtor();

              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              WriteDebtorCubit.get(context)
                  .delDebt(installmentModel.id, debt.id!);
              // WriteDebtorCubit.get(context).addDebt(installmentModel.id);
              ReadDebtorCubit.get(context).getDebtor();

              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: DebtViewbody(
        debt: debt,
      ),
    );
  }
}

class DebtViewbody extends StatelessWidget {
  final DebtModel debt;
  const DebtViewbody({
    super.key,
    required this.debt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            color: ColorManger.white,
            child: CustomDebtListTile(
              text: debt.id.toString(),
              date: debt.date!.substring(0, 10),
              // icon: ,
              // iconButton: ,
            ),
          ),
        ],
      ),
    );
  }
}
