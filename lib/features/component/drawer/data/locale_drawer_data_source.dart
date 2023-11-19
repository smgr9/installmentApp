import 'package:first_temp/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:first_temp/features/settings/presentation/view/settings_view.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/view/home.dart';

List<Map<String, dynamic>> drawerItems(BuildContext context) {
  List<Map<String, dynamic>> drawerItem = [
    {
      "text": S.of(context).sign_up,
      "icon": Icons.home,
      "function": () => Navigator.of(context).pushReplacementNamed(Home.id),
      "id": Home.id,
    },
    {
      "text": S.of(context).log_In,
      "icon": Icons.manage_accounts_rounded,
      "function": () => Navigator.of(context).pushReplacementNamed(Home.id),
      "id": Home.id,
    },
    {
      "text": S.of(context).select_Language,
      "icon": Icons.skip_next,
      "function": () =>
          Navigator.of(context).pushReplacementNamed(OnboardingView.id),
      "/": OnboardingView.id,
    },
    {
      "text": S.of(context).settings,
      "icon": Icons.settings,
      "function": () {
        Navigator.of(context).pushNamed(SettingsView.id);
      },
      "id": SettingsView.id,
    },
    {
      "text": S.of(context).logout,
      "icon": Icons.logout,
      "function": () => Navigator.of(context).pushReplacementNamed(Home.id),
      "id": Home.id,
    },
  ];
  return drawerItem;
}
