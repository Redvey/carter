import 'package:carter/utils/theme/widget_themes/appbar_theme.dart';
import 'package:carter/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:carter/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:carter/utils/theme/widget_themes/chip_theme.dart';
import 'package:carter/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:carter/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:carter/utils/theme/widget_themes/text_field_theme.dart';
import 'package:carter/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';


import '../constants/palette.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: CarterPalette.grey,
    brightness: Brightness.light,
    primaryColor: CarterPalette.primary,
    textTheme: CarterTextTheme.lightTextTheme,
    chipTheme: CarterChipTheme.lightChipTheme,
    scaffoldBackgroundColor: CarterPalette.white,
    appBarTheme: CarterAppBarTheme.lightAppBarTheme,
    checkboxTheme: CarterCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CarterBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CarterElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CarterOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CarterTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: CarterPalette.grey,
    brightness: Brightness.dark,
    primaryColor: CarterPalette.primary,
    textTheme: CarterTextTheme.darkTextTheme,
    chipTheme: CarterChipTheme.darkChipTheme,
    scaffoldBackgroundColor: CarterPalette.black,
    appBarTheme: CarterAppBarTheme.darkAppBarTheme,
    checkboxTheme: CarterCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CarterBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CarterElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CarterOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CarterTextFormFieldTheme.darkInputDecorationTheme,
  );
}
