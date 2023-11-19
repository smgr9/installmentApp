import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class DopterTitle extends StatelessWidget {
  final String title;
  const DopterTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManger.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      width: double.infinity,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
