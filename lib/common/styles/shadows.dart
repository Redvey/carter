import 'package:carter/utils/constants/palette.dart';
import 'package:flutter/material.dart';


class CarterShadowStyle{
  static final verticalProductShadow =BoxShadow(
    color: CarterPalette.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow =BoxShadow(
    color: CarterPalette.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

}