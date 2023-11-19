import 'package:first_temp/core/app/app_style.dart';
import 'package:first_temp/features/home/data/models/home_buttons_model.dart';
import 'package:flutter/material.dart';

class BuildHomeButtonContainer extends StatelessWidget {
  const BuildHomeButtonContainer({
    super.key,
    required this.buttons,
  });

  final HomeButtons buttons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(buttons.icon),
          Text(
            buttons.title,
            style: AppStyle.romanTextStyle.copyWith(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
