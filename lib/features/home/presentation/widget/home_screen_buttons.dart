import 'package:first_temp/features/home/data/data_source/local_data_sourse.dart';
import 'package:first_temp/features/home/data/models/home_buttons/home_buttons_model.dart';
import 'package:first_temp/features/home/presentation/widget/build_home_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreenButtons extends StatelessWidget {
  const HomeScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomeButtons> homeButtons = homeButtonsData(context);
    return Center(
      child: ListView.builder(
        // padding: const EdgeInsets.symmetric(horizontal: 10),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: homeButtons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 70),
            child: BuildHomeButtons(buttons: homeButtons[index]),
          );
        },
      ),
    );
  }
}
