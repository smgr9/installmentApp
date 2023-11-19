// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:first_temp/test/presentation/styles/color_manger.dart';

class TitlesText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;

  const TitlesText({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? ColorManger.black,
        fontSize: fontSize ?? 11,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
