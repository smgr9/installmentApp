import 'package:first_temp/features/add_debtor/presentation/view/add_debtor_view.dart';
import 'package:first_temp/features/debtor_quere/presentation/widget/dabtor_quere_body.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class DebtorQuereView extends StatelessWidget {
  static String id = "/debtor_quere";
  const DebtorQuereView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // ReadDebtorCubit.get(context).getDebtor();
              Navigator.of(context).pushNamed(AddDebtorView.id);
            },
            icon: const Tooltip(
              message: "إضافة دائن",
              child: Icon(Icons.add),
            ),
          )
        ],
        title: Text(S.of(context).debtor_list),
      ),
      body: const DebtorQuereBody(),
    );
  }
}
