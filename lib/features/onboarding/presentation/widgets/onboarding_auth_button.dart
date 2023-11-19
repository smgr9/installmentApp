import 'package:first_temp/core/app/app_color.dart';
import 'package:flutter/material.dart';

class OnBoardingAuthButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color? textColor;
  final void Function()? onTap;
  final double? width;
  final double? hight;

  const OnBoardingAuthButton({
    super.key,
    required this.text,
    required this.buttonColor,
    this.onTap,
    this.textColor,
    this.width,
    this.hight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hight,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.all(Radius.circular(11)),
            border: Border.all(
              width: 0.6,
              color: AppColor.fristButtonColor,
            )),
        child: Center(
          child: Text(
            text,
            // textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
