import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class EverticalImageText extends StatelessWidget {
  const EverticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Palette.white,
    this.onTap,
    this.backgroundColor,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark= EHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CarterSizes.spaceBtwItems),
        child: Column(
          children: [
            ///circular icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(CarterSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? Palette.black:Palette.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark? Palette.light:Palette.dark ,
                ),
              ),
            ),
            const SizedBox(
              height: CarterSizes.spaceBtwItems / 2,
            ),

            ///text

            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}