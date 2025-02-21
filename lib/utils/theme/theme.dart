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
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Palette.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: Palette.grey,
    brightness: Brightness.dark,
    primaryColor: Palette.primary,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Palette.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
