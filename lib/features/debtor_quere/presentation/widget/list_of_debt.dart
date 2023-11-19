import 'package:first_temp/features/debtor_quere/presentation/view/screens/debt_data_view.dart';
import 'package:first_temp/features/home/data/models/debt_model.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';

import 'package:flutter/material.dart';

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
            child: CustomDebtListTile(
              text: debt.id.toString(),
              date: debt.date?.substring(0, 10),
              icon: Icons.insert_drive_file,
              // iconButton: Icons.more_horiz_rounded,
              onPressed: () {},

              // leading: "ID",
            ),
          ),
        ),
      ],
    );
  }
}

class CustomDebtListTile extends StatelessWidget {
  const CustomDebtListTile({
    super.key,
    required this.text,
    this.icon,
    this.leading,
    this.date,
    this.iconButton,
    this.onPressed,
  });

  final String text;
  final IconData? icon;
  final String? leading;
  final String? date;
  final IconData? iconButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("دين رقم: ${int.parse(text) + 1}"),
      subtitle: Text("تاريخ الإضافة: $date"),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconButton,
          color: ColorManger.black,
        ),
      ),
      leading: Icon(
        icon,
        color: ColorManger.black,
      ),
    );
  }
}
