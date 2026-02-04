
import 'package:flutter/material.dart';
import 'package:restaurant/data/datasource/static/static.dart';

class CustomOnboardingBackground extends StatelessWidget {
  const CustomOnboardingBackground({
    super.key, required this.index,
  });
final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset(onboardingData[index].image,
             fit: BoxFit.cover,
             width: double.infinity,
             ),
    );
  }
}
