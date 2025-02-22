import 'package:flutter/material.dart';
import '../../constants/palette.dart';

class CarterChipTheme {
  CarterChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: CarterPalette.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: CarterPalette.black),
    selectedColor: CarterPalette.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: CarterPalette.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: CarterPalette.darkerGrey,
    labelStyle: TextStyle(color: CarterPalette.white),
    selectedColor: CarterPalette.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: CarterPalette.white,
  );
}
