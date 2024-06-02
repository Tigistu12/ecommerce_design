import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/features/personalization/screens/settings/settings.dart';
import 'package:my_ecommerce_app/features/shop/screens/home/home.dart';
import 'package:my_ecommerce_app/features/shop/screens/store/store.dart';
import 'package:my_ecommerce_app/features/shop/screens/wishlist/wishlist.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar( 
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darMode? TColors.black:Colors.white,
          indicatorColor: darMode? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
        
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
          ),
      ),
        body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  
final screens =[const HomeScreen(),const StoreScreen(), FavouriteScreen(),SettingsScreen()];
}