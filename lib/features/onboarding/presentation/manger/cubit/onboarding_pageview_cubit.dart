// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

part 'onboarding_pageview_state.dart';

class OnboardingPageviewCubit extends Cubit<OnboardingPageviewState> {
  OnboardingPageviewCubit() : super(const OnboardingPageviewInitial(0));

  int indexPagerView = 0;
  late PageController controller;

  void updatePage(int index) {
    indexPagerView = index;
    emit(OnboardingPageviewUpdated(indexPagerView));
  }

  // late PageController controller1;
  // int gazer = 0;
  // void increment() {
  //   gazer++;
  //   emit(OnboardingPageviewUpdated(gazer));
  // }

  // void decrement() {
  //   gazer--;
  //   emit(OnboardingPageviewUpdated(gazer));
  // }
}
