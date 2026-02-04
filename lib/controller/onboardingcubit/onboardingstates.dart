class OnBoardingStates {}
class OnboardingIntialstate extends OnBoardingStates{}

class OnBoardingChanged extends OnBoardingStates {
  final int currentPage;
  final bool isLastPage;

  OnBoardingChanged({
    required this.currentPage,
    required this.isLastPage,
  });
}