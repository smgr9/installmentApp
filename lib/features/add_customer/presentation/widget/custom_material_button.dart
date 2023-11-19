import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomMaterialButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          )),
    );
  }
}
