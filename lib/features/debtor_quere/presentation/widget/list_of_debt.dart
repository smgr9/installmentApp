import 'package:first_temp/features/debtor_quere/presentation/view/screens/debt_data_view.dart';
import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';
import 'package:first_temp/features/home/data/models/dobter_model/dobter_model.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';
import 'custom_debt_list_tile.dart';

class ListofDebtItem extends StatelessWidget {
  final DobterModel installmentModel;
  final DebtModel debt;

  const ListofDebtItem({
    Key? key,
    required this.debt,
    required this.installmentModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DebtDataView(
                    debt: debt,
                    installmentModel: installmentModel,
                  );
                },
              ),
            );
          },
          child: Card(
            color: ColorManger.white,
            child: Column(
              children: [
                CustomDebtListTile(
                  text: debt.id.toString(),
                  date: debt.date?.substring(0, 10),
                  icon: Icons.insert_drive_file,
                  // iconButton: Icons.more_horiz_rounded,
                  onPressed: () {},

                  // leading: "ID",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
