
import 'package:restaurant/constants/appassets.dart';
import 'package:restaurant/data/model/onboardingmodel.dart';

final List<Onboardingmodel> onboardingData = [
  Onboardingmodel(
    
    image: Assets.imagesOnboarding1,
    title: 'Order For Food',
    desc: 'Order your favourite meals easily and fast.', icon: Assets.transferdocumenticon,
  ),
  Onboardingmodel(
    image:  Assets.imagesOnboarding2,
    title: 'Easy Payment',
    desc: 'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
     icon: Assets.onboardingicon2,
  ),
  Onboardingmodel(
    image:  Assets.imagesOnboarding3,
    title: 'Fast Delivery',
    desc: 'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.', 
    icon: Assets.onboardingicon3,
  ),
];