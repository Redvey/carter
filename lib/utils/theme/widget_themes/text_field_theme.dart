import 'package:flutter/material.dart';
import '../../constants/palette.dart';
import '../../constants/sizes.dart';

class CarterTextFormFieldTheme {
  CarterTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CarterPalette.darkGrey,
    suffixIconColor: CarterPalette.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: CarterSizes.fontSizeMd, color: CarterPalette.black),
    hintStyle: const TextStyle().copyWith(fontSize: CarterSizes.fontSizeSm, color: CarterPalette.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: CarterPalette.black.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: CarterPalette.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: CarterPalette.darkGrey,
    suffixIconColor: CarterPalette.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: CarterSizes.fontSizeMd, color: CarterPalette.white),
    hintStyle: const TextStyle().copyWith(fontSize: CarterSizes.fontSizeSm, color: CarterPalette.white),
    floatingLabelStyle: const TextStyle().copyWith(color: CarterPalette.white.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CarterPalette.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CarterSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: CarterPalette.warning),
    ),
  );
}
