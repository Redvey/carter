import 'package:carter/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/device/device_utility.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';




class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark= CarterHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: CarterDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: CarterSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark?CarterPalette.light:CarterPalette.dark, dotHeight:6
            )
        ));
  }
}