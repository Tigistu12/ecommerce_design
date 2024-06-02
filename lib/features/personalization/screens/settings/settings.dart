import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:my_ecommerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:my_ecommerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/features/personalization/screens/Profile/profile.dart';
import 'package:my_ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:my_ecommerce_app/features/shop/screens/order/order.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white))),

                  // User Profile card
                  TUserProfileTile(onPressed: ()=> Get.to(()=>ProfileScreen())),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            //--body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  TSectionHeading(title: 'Account Settings',showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile( icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address',onTap: () => Get.to(() => UserAddressScreen()),),
                  TSettingsMenuTile( icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                  TSettingsMenuTile( icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In progress and completed orders',onTap: () => Get.to(()=> OrderScreen()),),
                  TSettingsMenuTile( icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  TSettingsMenuTile( icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'Lsit of all the discounted coupons'),
                  TSettingsMenuTile( icon: Iconsax.notification, title: 'NOtifications', subTitle: 'Set any kind of notification message'),
                  TSettingsMenuTile( icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                  // App Settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'App Settings',showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Geolocation',
                     subTitle: 'Set recommendation based on location',
                     trailing: Switch(value: true, onChanged: (Value){}),
                     ),
                     TSettingsMenuTile(
                    icon: Iconsax.security_user, 
                    title: 'Safe Mode',
                     subTitle: 'Search result is safe for all ages',
                     trailing: Switch(value: false, onChanged: (Value){}),
                     ),
                     TSettingsMenuTile(
                    icon: Iconsax.image, 
                    title: 'HD Image Quality',
                     subTitle: 'Set Image Quality to be seen',
                     trailing: Switch(value: false, onChanged: (Value){}),
                     ),

                     //Logout Button
                     SizedBox(height: TSizes.spaceBtwSections),
                     SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
                     ),
                     SizedBox(height: TSizes.spaceBtwSections * 2.5,)

                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}


