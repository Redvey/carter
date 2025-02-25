import 'package:carter/utils/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../../../utils/constants/sizes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.gradient,
  });

  final String image, title, subtitle;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(CarterSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: RiveAnimation.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: CarterPalette.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: CarterSizes.spaceBtwItems,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: CarterPalette.black, // Ensure color fits light theme
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
