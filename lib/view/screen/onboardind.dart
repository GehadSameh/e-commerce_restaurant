import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/controller/onboardingcubit/onboardingcubit.dart';
import 'package:restaurant/view/widget/onboarding/custompageview.dart';

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({super.key});

final  PageController controller=PageController();

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) =>Onboardingcubit(),
      child: Scaffold(
          body: 
          CustomPageView(),
        ),
    );
   
  }
}
