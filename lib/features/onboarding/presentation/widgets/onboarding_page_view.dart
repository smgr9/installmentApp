import 'package:first_temp/features/onboarding/data/local_data_onboarding.dart';
import 'package:first_temp/features/onboarding/presentation/manger/cubit/onboarding_pageview_cubit.dart';
import 'package:first_temp/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/onboarding_models.dart';

class OnboardingViewBodyPageView extends StatelessWidget {
  const OnboardingViewBodyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OnboardingPageviewCubit>(context).controller =
        PageController(initialPage: 0);
    var cubitData = BlocProvider.of<OnboardingPageviewCubit>(context);
    final List<OnboardingModels> onboarding = onboardingData(context);
    return BlocBuilder<OnboardingPageviewCubit, OnboardingPageviewState>(
      builder: (context, state) {
        return PageView.builder(
          onPageChanged: (value) {
            cubitData.updatePage(value);
          },
          controller: cubitData.controller,
          itemCount: onboarding.length,
          itemBuilder: (context, index) {
            return OnboardingItem(
              controller: cubitData.controller,
              index: index,
              onboarding: onboarding,
            );
          },
        );
      },
    );
  }
}
