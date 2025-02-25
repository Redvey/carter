import 'package:carter/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/device/device_utility.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

/// Floating Action Button with Smooth Transition
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CarterHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      right: 0,
      left: 0,
      bottom: CarterDeviceUtils.getBottomNavigationBarHeight() + 40,
      child: GestureDetector(
        onTap: () => controller.nextPage(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 10000),
          curve: Curves.easeInOutQuad, // Smoother transition effect
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: dark ? CarterPalette.next : CarterPalette.next.withOpacity(0.8),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: const Icon(Icons.arrow_forward_ios, color: CarterPalette.onboardingSkip),
        ),
      ),
    );
  }
}
