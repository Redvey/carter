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
    this.color = CarterPalette.onboarding, // Default color
    this.gradient,
  });

  final String image, title, subtitle;
  final Color color;
  final Gradient? gradient; // Nullable

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: gradient == null ? color : null, // Use color if no gradient
        gradient: gradient, // If gradient is provided, it overrides color
      ),
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
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: CarterSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
