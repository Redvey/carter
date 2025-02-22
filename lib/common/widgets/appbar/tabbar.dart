import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/device/device_utility.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class CarterTabBar extends StatelessWidget implements PreferredSizeWidget{
  const CarterTabBar({
    super.key, required this.tabs,
  });

  final List<Widget>tabs;

  @override
  Widget build(BuildContext context) {
    final dark= CarterHelperFunctions.isDarkMode(context);
    return Material(
      color: dark? CarterPalette.black : CarterPalette.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: CarterPalette.primary,
        labelColor: CarterHelperFunctions.isDarkMode(context)?CarterPalette.white:CarterPalette.primary,
        unselectedLabelColor: CarterPalette.darkGrey,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(CarterDeviceUtils.getAppBarHeight());
}

