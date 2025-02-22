import 'package:flutter/material.dart';

import '../../constants/palette.dart';
import '../../constants/sizes.dart';

class CarterAppBarTheme{
  CarterAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Palette.black, size: CarterSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Palette.black, size: CarterSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Palette.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Palette.black, size: CarterSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Palette.white, size: CarterSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Palette.white),
  );
}