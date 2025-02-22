import 'package:carter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CarterSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight=EdgeInsets.only(
    top: CarterSizes.appBarHeight,
    bottom: CarterSizes.defaultSpace,
    left: CarterSizes.defaultSpace,
    right: CarterSizes.defaultSpace,
  );
}