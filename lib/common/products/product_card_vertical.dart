import 'package:carter/common/widgets/texts/e_brand_title_with_verified_text_icon.dart';
import 'package:carter/common/styles/shadows.dart';
import 'package:carter/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:carter/common/widgets/icons/e_circular_icons.dart';
import 'package:carter/common/widgets/images/e_rounded_image.dart';
import 'package:carter/common/widgets/texts/price_texts.dart';
import 'package:carter/utils/constants/image_strings.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/texts/product_title_texts.dart';

class CarterProductCardVertical extends StatelessWidget {
  const CarterProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CarterHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [CarterShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(CarterSizes.productImageRadius),
          color: dark ? CarterPalette.darkerGrey : CarterPalette.white,
        ),
        child: Column(
          children: [
            ///Thumbnail,wishlist Button,discount tag
            CircularCont(
              height: 180,
              padding: const EdgeInsets.all(CarterSizes.sm),
              backgroundColor: dark ? CarterPalette.dark : CarterPalette.light,
              child: Stack(
                children: [
                  ///Thumbnai Image
                  ERoundedImage(
                    imageUrl: CarterImg.productImage1,
                    applyImageRadius: true,
                  ),

                  ///Sale Tage
                  Positioned(
                    top: 12,
                    child: CircularCont(
                      radius: CarterSizes.sm,
                      backgroundColor: CarterPalette.secondary.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: CarterSizes.sm, vertical: CarterSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: CarterPalette.black),
                      ),
                    ),
                  ),

                  ///FavIcon
                  Positioned(
                      top: 0,
                      right: 0,
                      child: const ECircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
             SizedBox(
              height: CarterSizes.spaceBtwItems / 2,
            ),

            ///Details
            Padding(
                padding: const EdgeInsets.only(left: CarterSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: 'Green Nike Air Shoes',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: CarterSizes.spaceBtwItems / 2,
                    ),
                    EBrandTitleWithVerifiedIcon(title: "Nike",),
                    // add spacer to keep height of each box same in case 1 or 2 lines of heading


                  ],
                )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                Padding(
                  padding: const EdgeInsets.only(left: CarterSizes.sm),
                  child: EProductPriceText(price: '35',),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: CarterPalette.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(CarterSizes.cardRadiusMd),
                          bottomRight: Radius.circular(
                              CarterSizes.productImageRadius))),
                  child: SizedBox(
                      width: CarterSizes.iconLg * 1.2,
                      height: CarterSizes.iconLg * 1.2,
                      child: Center(
                          child: const Icon(
                            Iconsax.add,
                            color: CarterPalette.white,
                          ))),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}




