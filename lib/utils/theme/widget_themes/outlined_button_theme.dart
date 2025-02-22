import 'package:flutter/material.dart';

import '../../constants/palette.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class CarterOutlinedButtonTheme {
  CarterOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: CarterPalette.dark,
      side: const BorderSide(color: CarterPalette.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: CarterPalette.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: CarterSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CarterSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: CarterPalette.light,
      side: const BorderSide(color: CarterPalette.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: CarterPalette.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: CarterSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CarterSizes.buttonRadius)),
    ),
  );
}
