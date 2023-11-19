import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/core/app/app_style.dart';
import 'package:flutter/material.dart';

class TitleBody extends StatelessWidget {
  final String text;
  const TitleBody({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyle.blackTextStyle.copyWith(
            color: antiPrimaryColor(context),
            fontSize: 21,
          ),
        ),
      ],
    );
  }
}
