import 'package:carter/common/products/product_card_vertical.dart';
import 'package:carter/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:carter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:carter/common/widgets/layouts/grid_layout.dart';
import 'package:carter/common/widgets/texts/section_heading.dart';
import 'package:carter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:carter/features/shop/screens/home/widgets/home_catagories.dart';
import 'package:carter/features/shop/screens/home/widgets/home_promoslider.dart';
import 'package:carter/utils/constants/image_strings.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ETopHeader(
                child: Column(
              children: [
                ///AppBar
                CarterHomeAppBar(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///SearchBar
                ESearchBox(
                  text: 'Search in Store',
                  icon: Iconsax.search_normal,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///Categories carousel
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ESectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Palette.white,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      ///Categories
                      CarterHomeCategories()
                    ],
                  ),
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///PromoSlider
                  CarterPromoSilder(
                    banners: [
                      EMages.promoBanner1,
                      EMages.promoBanner2,
                      EMages.promoBanner3
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  ESectionHeading(
                    title: 'Popular Categories',
                    onPressed: (){},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///product grids
                  EGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index)=> const EProductCardVertical(),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


