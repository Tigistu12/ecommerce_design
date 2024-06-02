import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/device/device_utility.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TTapBar extends StatelessWidget implements PreferredSizeWidget {
  const TTapBar({super.key,required this.tabs});
  final List<Widget>tabs;
  
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark? TColors.black:TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark? TColors.white:TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}