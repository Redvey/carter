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

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: Palette.grey,
    brightness: Brightness.light,
    primaryColor: Palette.primary,
    textTheme: CarterTextTheme.lightTextTheme,
    chipTheme: CarterChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Palette.white,
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
    disabledColor: Palette.grey,
    brightness: Brightness.dark,
    primaryColor: Palette.primary,
    textTheme: CarterTextTheme.darkTextTheme,
    chipTheme: CarterChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Palette.black,
    appBarTheme: CarterAppBarTheme.darkAppBarTheme,
    checkboxTheme: CarterCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CarterBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CarterElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CarterOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CarterTextFormFieldTheme.darkInputDecorationTheme,
  );
}
