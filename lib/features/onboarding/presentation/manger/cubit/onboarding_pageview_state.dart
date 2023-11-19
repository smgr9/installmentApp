part of 'onboarding_pageview_cubit.dart';

abstract class OnboardingPageviewState {
  const OnboardingPageviewState();
}

class OnboardingPageviewInitial extends OnboardingPageviewState {
  final int indexPagerView;

  const OnboardingPageviewInitial(this.indexPagerView);
}

class OnboardingPageviewUpdated extends OnboardingPageviewState {
  final int indexPagerView;

  const OnboardingPageviewUpdated(this.indexPagerView);
}
