import 'package:first_temp/features/onboarding/presentation/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: OnboardingViewBodyPageView());
  }
}
