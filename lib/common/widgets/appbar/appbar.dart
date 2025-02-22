import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CarterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CarterAppBar(
      {super.key,
      this.title,
      this.showBackArrow=false,
      this.leadingIcons,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcons;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: CarterSizes.md),
      child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left))
              : leadingIcons != null? IconButton(
                  onPressed: leadingOnPressed, icon: Icon(leadingIcons)): null,
      title: title,
      actions: actions,),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(CarterDeviceUtils.getAppBarHeight());
}
