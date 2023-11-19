import 'package:first_temp/features/onboarding/data/models/onboarding_models.dart';
import 'package:first_temp/features/onboarding/presentation/widgets/onboardin_bottom_button.dart';
import 'package:first_temp/features/onboarding/presentation/widgets/onboarding_data.dart';
import 'package:first_temp/features/onboarding/presentation/widgets/onboarding_dot_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manger/cubit/onboarding_pageview_cubit.dart';
import 'onboarding_skip_buttom.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    Key? key,
    required this.index,
    required this.onboarding,
    required this.controller,
  }) : super(key: key);
  final List<OnboardingModels> onboarding;
  final int index;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    var indexOrder =
        BlocProvider.of<OnboardingPageviewCubit>(context).indexPagerView;
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 60),
          OnBoardingSkipButton(indexPagerView: indexOrder),
          OnboardingData(onboarding: onboarding, index: index),
          OnboardingDotPageViewRow(
              onboarding: onboarding, indexOrder: indexOrder),
          const Spacer(),
          OnboardinBottomButton(indexPagerView: indexOrder),
          const SizedBox(height: 77),
        ],
      ),
    );
  }
}
