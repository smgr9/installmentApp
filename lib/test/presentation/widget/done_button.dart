import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({Key? key, required this.colorCode, required this.onTap})
      : super(key: key);

  final int colorCode;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            color: ColorManger.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Done",
              style: TextStyle(color: Color(colorCode)),
            ),
          ),
        ),
      ),
    );
  }
}
