import 'package:first_temp/features/Splash/presentation/views/splash_view.dart';
import 'package:first_temp/features/add_debtor/presentation/view/add_debtor_view.dart';
import 'package:first_temp/features/firebase_home_data/presentation/view/firebase_home_view.dart';

import 'package:first_temp/features/onboarding/presentation/manger/cubit/onboarding_pageview_cubit.dart';
import 'package:first_temp/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:first_temp/features/debtor_quere/presentation/view/debtor_quere_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/view/home.dart';
import '../../features/settings/presentation/view/settings_view.dart';

Map<String, Widget Function(BuildContext)> routes = {
  OnboardingView.id: (context) => BlocProvider(
        create: (context) => OnboardingPageviewCubit(),
        child: const OnboardingView(),
      ),
  Home.id: (context) => const Home(),
  SettingsView.id: (context) => const SettingsView(),
  SplashView.id: (context) => const SplashView(),
  AddDebtorView.id: (context) => const AddDebtorView(),
  DebtorQuereView.id: (context) => const DebtorQuereView(),
  FirebaseHomeView.id: (context) => const FirebaseHomeView(),
  SplashView.id: (context) => const SplashView(),
  // AddDebtorView.id: (context) => const AddDebtorView(),
  // AddDebtview.id: (context) => const AddDebtview(),
  // TestApp.id: (context) => const TestApp(),
  // TestApp2.id: (context) => const TestApp2(),
};
