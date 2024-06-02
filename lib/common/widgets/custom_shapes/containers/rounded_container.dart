import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.child,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.showBorder = false,
      this.radius = TSizes.cardRadiusLg,
      this.backgroundColor = TColors.white,
      this.borderColor = TColors.borderPrimary,
      });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder? Border.all(color: borderColor):null
      ),
      child: child,
    );
  }
}
