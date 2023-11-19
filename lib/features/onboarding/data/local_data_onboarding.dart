import 'package:flutter/material.dart';

import 'package:first_temp/core/app/app_image.dart';
import 'package:first_temp/features/onboarding/data/models/onboarding_models.dart';
import 'package:first_temp/features/onboarding/data/models/phone_number_model.dart';
import 'package:first_temp/generated/l10n.dart';

List<OnboardingModels> onboardingData(context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  List<OnboardingModels> onboardingData = [
    OnboardingModels(
        img: isDarkMode ? AppImages.onbardingDark1 : AppImages.onbarding1,
        title: S.of(context).onboadring_title1,
        subTitle: S.of(context).onboadring_subtitle_title1),
    OnboardingModels(
        img: isDarkMode ? AppImages.onbardingDark2 : AppImages.onbarding2,
        title: S.of(context).onboadring_title2,
        subTitle: S.of(context).onboadring_subtitle_title2),
    OnboardingModels(
        img: isDarkMode ? AppImages.onbardingDark3 : AppImages.onbarding3,
        title: S.of(context).onboadring_title3,
        subTitle: S.of(context).onboadring_subtitle_title3),
  ];

  return onboardingData;
}

List<PhoneNumberModel> phoneNumberData() {
  List<PhoneNumberModel> phoneNumber = [
    PhoneNumberModel(number: "1"),
    PhoneNumberModel(number: "2"),
    PhoneNumberModel(number: "3"),
    PhoneNumberModel(number: "4"),
    PhoneNumberModel(number: "5"),
    PhoneNumberModel(number: "6"),
    PhoneNumberModel(number: "7"),
    PhoneNumberModel(number: "8"),
    PhoneNumberModel(number: "9"),
    PhoneNumberModel(number: ""),
    PhoneNumberModel(number: "0"),
    PhoneNumberModel(svg: AppImages.union),
  ];

  return phoneNumber;
}
