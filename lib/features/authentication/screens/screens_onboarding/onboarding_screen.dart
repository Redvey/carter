import 'package:carter/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:carter/features/authentication/screens/screens_onboarding/widgets/dot_navigation.dart';
import 'package:carter/features/authentication/screens/screens_onboarding/widgets/onboarding_pages.dart';
import 'package:carter/features/authentication/screens/screens_onboarding/widgets/onboarding_skip.dart';
import 'package:carter/utils/constants/image_strings.dart';
import 'package:carter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/palette.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnboardingPage(
                  image: CarterImg.onboardingA,
                  title: CarterTexts.onBoardingTitle1,
                  subtitle: CarterTexts.onBoardingSubTitle1,
                  gradient: CarterPalette.onboardingA,
                ),

                OnboardingPage(
                  image: CarterImg.onboardingB,
                  title: CarterTexts.onBoardingTitle2,
                  subtitle: CarterTexts.onBoardingSubTitle2,
                  gradient: CarterPalette.onboardingB,
                ),

                OnboardingPage(
                  image: CarterImg.onboardingC,
                  title: CarterTexts.onBoardingTitle3,
                  subtitle: CarterTexts.onBoardingSubTitle3,
                  gradient: CarterPalette.onboardingC,
                ),

              ]),

          ///skipbutton
          const OnboardingSkipButton(),

          ///dot navigation smoothpage indicator
          OnBoardingDotNavigation(),

          ///Circular Button
          // OnBoardingNextButton()
        ],
      ),
    );
  }
}



