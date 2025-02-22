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
    final dark= EHelperFunctions.isDarkMode(context);
    return Material(
      color: dark? Palette.black : Palette.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: Palette.primary,
        labelColor: EHelperFunctions.isDarkMode(context)?Palette.white:Palette.primary,
        unselectedLabelColor: Palette.darkGrey,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}

