import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/controller/onboardingcubit/onboardingstates.dart';

class Onboardingcubit extends Cubit<OnBoardingStates>{
  Onboardingcubit():super(OnboardingIntialstate());

PageController pageController=PageController();
int currentPage=0;
  onPageChanged(int index,int totalPages){
currentPage=index;
    emit(OnBoardingChanged(currentPage: index, isLastPage: index==totalPages-1));
  }
  nextPage(int totalPages){
    if(currentPage<totalPages-1){
      pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    }
  }
  void skip(int totalPages) {
    pageController.animateToPage(
      totalPages - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

}