import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/constants/colorsapp.dart';
import 'package:restaurant/controller/onboardingcubit/onboardingcubit.dart';
import 'package:restaurant/controller/onboardingcubit/onboardingstates.dart';
import 'package:restaurant/data/datasource/static/static.dart';
import 'package:restaurant/view/screen/loginscreen.dart';


class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Onboardingcubit,OnBoardingStates>(
      builder: (BuildContext context, state) { 
      var  cubit=context.read<Onboardingcubit>(); 
      return SizedBox(
          width: double.infinity,
           height: 50,
        child:  ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: AppColor.primaryColor,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
               ),
             ),
             onPressed: () {
              if(!(state is OnBoardingChanged && state.isLastPage)){
             cubit.nextPage(onboardingData.length);
              }
              else{
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Loginscreen()), 
                (route)=>false);
              }
             },
             child: Text((state is OnBoardingChanged && state.isLastPage)?
        'Get started':'Next',
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ))
      );},
    );
     
    
  }}
