import 'package:flutter/material.dart';
import '../../constants/palette.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class CarterElevatedButtonTheme {
  CarterElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CarterPalette.light,
      backgroundColor: CarterPalette.primary,
      disabledForegroundColor: CarterPalette.darkGrey,
      disabledBackgroundColor: CarterPalette.buttonDisabled,
      side: const BorderSide(color: CarterPalette.primary),
      padding: const EdgeInsets.symmetric(vertical: CarterSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: CarterPalette.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CarterSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CarterPalette.light,
      backgroundColor: CarterPalette.primary,
      disabledForegroundColor: CarterPalette.darkGrey,
      disabledBackgroundColor: CarterPalette.darkerGrey,
      side: const BorderSide(color: CarterPalette.primary),
      padding: const EdgeInsets.symmetric(vertical: CarterSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: CarterPalette.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(CarterSizes.buttonRadius)),
    ),
  );
}
