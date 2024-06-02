import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/features/personalization/screens/address/add_new_address.dart';
import 'package:my_ecommerce_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(
      backgroundColor: TColors.primary,
      onPressed: () => Get.to(() => AddNewAddressScreen()),
      child: Icon(Iconsax.add, color: TColors.white,),
      ), 
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: true),
            ],
          ),
          ),
      ),
    );
  }
}