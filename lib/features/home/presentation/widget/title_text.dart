import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/core/app/app_style.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyle.blackTextStyle.copyWith(color: primaryColor(context)),
        )
      ],
    );
  }
}
