import 'package:first_temp/core/app/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/onboarding_models.dart';

class OnboardingData extends StatelessWidget {
  const OnboardingData({
    super.key,
    required this.onboarding,
    required this.index,
  });

  final List<OnboardingModels> onboarding;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          onboarding[index].img,
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 23,
        ),
        Text(
          onboarding[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: primaryColor(context),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          onboarding[index].subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: primaryColor(context)),
        ),
      ],
    );
  }
}
