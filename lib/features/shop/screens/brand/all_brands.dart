import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:my_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Brand'),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //heading
              TSectionHeading(title: 'Brands',showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems),

              //-- brands
              TGridLayout(
                itemCount: 10, 
                mainAxisExtent: 80,
                itemBuilder: (context, index)=> TBrandCard(showBorder: true,onTap: ()=>Get.to(()=>BrandProducts()),),
                ),
            ],
          ),
        ),
      ),
    );
  }
}