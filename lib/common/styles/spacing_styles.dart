import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
// import 'package:my_ecommerce_app/common/styles/spacing_styles.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}
