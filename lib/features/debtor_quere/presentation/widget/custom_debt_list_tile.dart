import 'package:first_temp/features/home/data/models/debt_model/debt_model.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class CustomDebtListTile extends StatelessWidget {
  const CustomDebtListTile({
    super.key,
    required this.text,
    this.icon,
    this.leading,
    this.date,
    this.iconButton,
    this.onPressed,
    required this.debtModel,
  });

  final String text;
  final IconData? icon;
  final String? leading;
  final String? date;
  final IconData? iconButton;
  final void Function()? onPressed;
  final DebtModel debtModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("رقم الدين : ${debtModel.id! + 1}"),
      subtitle: debtModel.date != null
          ? Text("تاريخ الإضافة: ${debtModel.date.toString().substring(0, 10)}")
          : null,
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
