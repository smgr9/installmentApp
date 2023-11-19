import 'package:first_temp/features/onboarding/presentation/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  static String id = "/";
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
