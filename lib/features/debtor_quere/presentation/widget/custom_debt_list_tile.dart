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
