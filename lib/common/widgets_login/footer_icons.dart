import 'package:carter/utils/constants/image_strings.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FooterIcons extends StatelessWidget {
  const FooterIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CarterPalette.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: CarterSizes.iconMd,
                height: CarterSizes.iconMd,
                image: AssetImage(CarterImg.google)),
          ),
        ),
        const SizedBox(width: CarterSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CarterPalette.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: CarterSizes.iconMd,
                height: CarterSizes.iconMd,
                image: AssetImage(CarterImg.facebook)),
          ),
        ),
      ],
    );
  }
}