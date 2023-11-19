import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/features/home/presentation/view/home.dart';
import 'package:first_temp/features/onboarding/data/local_data_onboarding.dart';
import 'package:first_temp/features/onboarding/presentation/widgets/onboarding_auth_button.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class OnboardinBottomButton extends StatelessWidget {
  const OnboardinBottomButton({Key? key, required this.indexPagerView})
      : super(key: key);
  final int indexPagerView;

  @override
  Widget build(BuildContext context) {
    return indexPagerView == onboardingData(context).length - 1
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OnBoardingAuthButton(
                  text: S.of(context).sign_up,
                  textColor: AppColor.fristTextButtonColor,
                  buttonColor: AppColor.fristButtonColor,
                  width: MediaQuery.of(context).size.width / 3,
                  hight: MediaQuery.of(context).size.width / 9,
                  onTap: () async {
                    Navigator.of(context).pushReplacementNamed(Home.id);
                    // await Hive.box(HiveConstants.installment).clear();
                  }),
              const SizedBox(
                width: 20,
              ),
              OnBoardingAuthButton(
                  text: S.of(context).log_In,
                  textColor: secondTextButtonColor(context),
                  buttonColor: secondButtonColor(context),
                  width: MediaQuery.of(context).size.width / 3,
                  hight: MediaQuery.of(context).size.width / 9,
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(Home.id);
                  }),
            ],
          )
        : Container();
  }
}
