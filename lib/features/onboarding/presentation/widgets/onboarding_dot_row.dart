import 'package:first_temp/features/onboarding/data/models/onboarding_models.dart';
import 'package:first_temp/features/onboarding/presentation/widgets/onboarding_dot_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingDotPageViewRow extends StatelessWidget {
  const OnboardingDotPageViewRow({
    super.key,
    required this.onboarding,
    required this.indexOrder,
  });

  final List<OnboardingModels> onboarding;
  final int indexOrder;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onboarding.length,
            (index) => OnboardingDotPageViewItem(
                  indexOrder: indexOrder,
                  index: index,
                ))
      ],
    );
  }
}
