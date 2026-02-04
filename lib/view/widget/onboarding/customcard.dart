
import 'package:flutter/material.dart';
import 'package:restaurant/constants/colorsapp.dart';
import 'package:restaurant/data/datasource/static/static.dart';
import 'package:restaurant/view/widget/onboarding/customelevatedbutton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.controller,
    required this.index,
  });

  final PageController controller;
  
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 0.45,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.only(
           topLeft: Radius.circular(30),
           topRight: Radius.circular(30),
         ),
       color: Colors.white
     ),
     child: Column(
       
       children: [
         Image.asset(onboardingData[index].icon),
        
           const SizedBox(height: 16),
        
         Text(onboardingData[index].title,
         style: TextStyle(
           fontSize: 24,
           fontWeight: FontWeight.bold,
           color: AppColor.primaryColor
         ),),
        
        
           const SizedBox(height: 12),
           /// description
            Text(
             onboardingData[index].desc,
             textAlign: TextAlign.center,
             style: TextStyle(color: Color(0xff1E1E1E)),
           ),
           SizedBox(height: 20,),
           SmoothPageIndicator(    
      controller: controller,   
      count:  onboardingData.length,    
      effect:  WormEffect(
       dotWidth: 20,
       dotHeight: 5,
       activeDotColor: AppColor.primaryColor,
       dotColor: AppColor.dotColor
       
      ),      
      
        )   , 
      
             const Spacer(),
        
            CustomElevatedButton()
       ],
        
     ),
    );
  }
}

