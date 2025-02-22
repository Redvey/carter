import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/device/device_utility.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class ESearchBox extends StatelessWidget {
  const ESearchBox({
    super.key,
    required this.text,
    this.icon= Iconsax.search_normal,
    this.showBackgroundColor=true,
    this.showBorder=true,
    this.onTap,
    this.padding=const EdgeInsets.symmetric(horizontal: CarterSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackgroundColor, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: EDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(CarterSizes.md),
          decoration: BoxDecoration(
              color: showBackgroundColor?dark? Palette.dark:Palette.light:Colors.transparent,
              borderRadius: BorderRadius.circular(CarterSizes.cardRadiusLg),
              border: showBorder? Border.all(color: Palette.grey):null),
          child: Row(
            children: [
              Icon(
                icon,
                color: Palette.darkGrey,
              ),
              const SizedBox(
                width: CarterSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}