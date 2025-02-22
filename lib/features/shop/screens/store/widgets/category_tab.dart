import 'package:carter/common/products/product_card_vertical.dart';
import 'package:carter/common/widgets/brand/brand_showcase.dart';
import 'package:carter/common/widgets/layouts/grid_layout.dart';
import 'package:carter/common/widgets/texts/section_heading.dart';
import 'package:carter/utils/constants/image_strings.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(CarterSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              EBrandShowCase(images: [
                CarterImg.productImage1,
                CarterImg.productImage2,
                CarterImg.productImage3,
              ],),
              EBrandShowCase(images: [
                CarterImg.productImage1,
                CarterImg.productImage2,
                CarterImg.productImage3,
              ],),
              const SizedBox(height: CarterSizes.spaceBtwItems,),

              ///Products
              ESectionHeading(title: 'You might like',showActionButton: true,onPressed: (){},),
              const SizedBox(height: CarterSizes.spaceBtwItems,),

              EGridLayout(itemCount: 4, itemBuilder: (_,index)=> const CarterProductCardVertical())
            ],
          ),
        )
      ],
    );
  }
}