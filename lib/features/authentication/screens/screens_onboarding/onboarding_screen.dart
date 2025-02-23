import 'package:carter/features/authentication/screens/screens_onboarding/widgets/onboarding_pages.dart';
import 'package:carter/features/authentication/screens/screens_onboarding/widgets/onboarding_skip.dart';
import 'package:carter/utils/constants/image_strings.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/constants/text_strings.dart';
import 'package:carter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable pages
          PageView(
            children: [
              OnboardingPage(
                image: CarterImg.onBoardingImage1,
                title: CarterTexts.onBoardingTitle1,
                subtitle: CarterTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: CarterImg.onBoardingImage2,
                title: CarterTexts.onBoardingSubTitle2,
                subtitle: CarterTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: CarterImg.onBoardingImage3,
                title: CarterTexts.onBoardingSubTitle3,
                subtitle: CarterTexts.onBoardingTitle3,
              ),
            ],
          ),

          //Skip button
          OnboardingSkipButton(),

          //Smooth page indicators
          Positioned(
            bottom: CarterDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: CarterSizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: const CustomizableEffect(
                
                dotDecoration: DotDecoration(), activeDotDecoration: DotDecoration(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
