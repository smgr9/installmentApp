import 'package:flutter/material.dart';
import 'home_screen_buttons.dart';
import 'home_screen_edioion_buttons.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: HomeScreenButtons(),
        ),
        HomeScreenEdioionButtons(),
      ],
    );
  }
}
