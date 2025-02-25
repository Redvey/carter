import 'package:carter/utils/constants/palette.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/device/device_utility.dart';



class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: CarterDeviceUtils.getAppBarHeight(),
        right: CarterSizes.defaultSpace,
        child:
        TextButton(onPressed: () {}, child: Text(CarterTexts.skip,style: TextStyle(color: CarterPalette.onboardingSkip),)));
  }
}
