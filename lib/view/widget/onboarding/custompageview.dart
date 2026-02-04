
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/constants/colorsapp.dart';
import 'package:restaurant/controller/onboardingcubit/onboardingcubit.dart';
import 'package:restaurant/controller/onboardingcubit/onboardingstates.dart';
import 'package:restaurant/data/datasource/static/static.dart';
import 'package:restaurant/view/screen/loginscreen.dart';
import 'package:restaurant/view/widget/onboarding/customOnboardingBackground.dart';
import 'package:restaurant/view/widget/onboarding/customcard.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    
  });

 

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Onboardingcubit,OnBoardingStates>(
      builder: (BuildContext context, OnBoardingStates state) {  
        var cubit =context.read<Onboardingcubit>();
      return PageView.builder(
        onPageChanged: (index) => cubit.onPageChanged(index, onboardingData.length),
          controller:cubit.pageController,
          itemCount: onboardingData.length,
          itemBuilder: (context,i)=>
          Stack(
            children: [
          CustomOnboardingBackground(index: i,),
   if(!(state is OnBoardingChanged && state.isLastPage))   Positioned(
          top: 50,
          right: 20,
          child:TextButton(
            onPressed: () {
              cubit.skip(onboardingData.length);
      //         Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(builder: (_) => Loginscreen()),
      //   (route) => false,
      // );
            },
            child: Text(
              'Skip >',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor
              ),
            ),
          ),
        ),
                 
                 Positioned(
        bottom: 0,
        left: 0,
        right: 0,
         child: CustomCard(
          index: i,
          controller: cubit.pageController),
                 )
        
        ],));},
    );
    }
   
  }

