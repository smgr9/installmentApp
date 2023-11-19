import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manger/cubit/onboarding_pageview_cubit.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
    required this.indexPagerView,
  });
  final int indexPagerView;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocProvider.of<OnboardingPageviewCubit>(context).indexPagerView == 2
            ? const SizedBox(
                height: 40,
              )
            : SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        BlocProvider.of<OnboardingPageviewCubit>(context)
                            .controller
                            .animateToPage(2,
                                duration: const Duration(milliseconds: 600),
                                curve: Curves.easeInOut);
                      },
                      child: Text(
                        S.of(context).skip_button,
                        style: TextStyle(color: AppColor.skipButton),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
