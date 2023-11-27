import 'package:first_temp/features/home/data/models/home_buttons/home_buttons_model.dart';
import 'package:flutter/material.dart';
import 'build_home_button_container.dart';

class BuildHomeButtons extends StatelessWidget {
  final HomeButtons buttons;
  const BuildHomeButtons({
    super.key,
    required this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(buttons.page);
      },
      child: Hero(
        tag: "gazer2",
        child: Container(
          // width: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(55),
          ),
          child: BuildHomeButtonContainer(buttons: buttons),
        ),
      ),
    );
  }
}
