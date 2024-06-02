import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/features/personalization/screens/Profile/widgets/profile_menu.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('Profile'),),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user,width: 80,height: 80),
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture')),
                  ],
                ),
              ),
              // Details
              SizedBox(height: TSizes.spaceBtwItems /2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              // heading profile info
              TSectionHeading(title: 'profile Information',showActionButton: false),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'Name',value: 'Tigistu',onPressed: (){}),
              TProfileMenu(title: 'Username',value: 'Tigistu',onPressed: (){}),

              SizedBox(height: TSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              // heading personal info
              TSectionHeading(title: 'Personal Information',showActionButton: false),
              SizedBox(height: TSizes.spaceBtwItems),


              TProfileMenu(title: 'User ID',value: '1221',icon: Iconsax.copy, onPressed: (){}),
              TProfileMenu(title: 'E-mail',value: 'tigistu1264',onPressed: (){}),
              TProfileMenu(title: 'Phone Number',value: '+251-932-045687',onPressed: (){}),
              TProfileMenu(title: 'Gender',value: 'Male',onPressed: (){}),
              TProfileMenu(title: 'Date of Birth',value: '31 Dec 2001',onPressed: (){}),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){}, 
                  child: Text('Close Account',style: TextStyle(color: Colors.red)),
                  ),
              ),

            ],
          ),
          ),
      ),
    );
  }
}

