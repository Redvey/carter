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
    iconTheme: IconThemeData(color: CarterPalette.black, size: CarterSizes.iconMd),
    actionsIconTheme: IconThemeData(color: CarterPalette.black, size: CarterSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: CarterPalette.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: CarterPalette.black, size: CarterSizes.iconMd),
    actionsIconTheme: IconThemeData(color: CarterPalette.white, size: CarterSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: CarterPalette.white),
  );
}