import 'package:carter/common/widgets/appbar/appbar.dart';
import 'package:carter/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class CarterHomeAppBar extends StatelessWidget {
  const CarterHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarterAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CarterTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CarterPalette.grey),
          ),
          Text(
            CarterTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: CarterPalette.white),
          ),
        ],
      ),
      actions: [
        ECartCounterIcon(onPressed: () {  }, iconColor: CarterPalette.white,)
      ],
    );
  }
}