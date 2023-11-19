import 'package:first_temp/features/home/data/models/home_buttons_model.dart';
import 'package:first_temp/features/home/presentation/widget/build_home_buttons.dart';
import 'package:flutter/material.dart';

class BuildListOfHomeData extends StatelessWidget {
  final List<HomeButtons> homeButtonData;
  const BuildListOfHomeData({Key? key, required this.homeButtonData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            homeButtonData.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: BuildHomeButtons(buttons: homeButtonData[index]),
            ),
          ),
        ),
      ),
    );
  }
}
