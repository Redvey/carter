import 'package:carter/utils/constants/image_strings.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class LogoTitleSection extends StatelessWidget {
  const LogoTitleSection({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
            height: 150,
            image: dark
                ? AssetImage(CarterImg.lightAppIcon)
                : AssetImage(CarterImg.darkAppIcon)),
        Text(
          CarterTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: CarterSizes.sm,
        ),
        Text(
          CarterTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}