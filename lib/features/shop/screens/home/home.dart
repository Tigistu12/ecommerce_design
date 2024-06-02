import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:my_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce_app/common/widgets/products/product_cards/produtc-card_vertical.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:my_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:my_ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:my_ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header --
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //--appbar --
                  THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //--searchbar--
                  TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //--categories --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //-- heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        //categories
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            //body
            Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    //promo slider
                    TPromoSlider(banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ]),
                    SizedBox(height: TSizes.spaceBtwSections),

                    //heading
                    TSectionHeading(title: 'Popular Products',onPressed: ()=> Get.to(()=> AllProducts()),),
                    SizedBox(height: TSizes.spaceBtwSections),

                    //popular products
                    TGridLayout(itemCount: 2,itemBuilder: (_, index)=>TProductCardVertical()),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}


