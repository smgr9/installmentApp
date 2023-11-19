import 'package:first_temp/core/app/app_color.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final Color? color;
  final Color? color2;
  const CustomIconButton({
    super.key,
    this.onPressed,
    required this.iconData,
    this.color,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.amber,
            border: Border.all(
              color: primaryColor(context),
              width: 0.5,
            ),
            color: color2,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              iconData,
              // size: 15,
              color: color,
            ),
          )),
    );
  }
}
