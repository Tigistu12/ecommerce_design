import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/tabbar.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:my_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:my_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/features/shop/screens/brand/all_brands.dart';
import 'package:my_ecommerce_app/features/shop/screens/store/widgests/category_tab.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: (){},)
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_,innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black: TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
               padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    // search bar
                    SizedBox(height: TSizes.spaceBtwItems),
                    TSearchContainer(
                    text: 'Search in Store',showBorder: true, showBackground: false,padding: EdgeInsets.zero,),
                    SizedBox(height: TSizes.spaceBtwSections),
      
                    //Featured Brands
                    TSectionHeading(title: 'Featured Brands', onPressed: ()=>Get.to(()=>AllBrandsScreen())),
                    SizedBox(height: TSizes.spaceBtwItems / 1.5),
      
                    // brand grid
                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80, 
                      itemBuilder: (_,index){
                      
                    return TBrandCard(showBorder: false);
                    },
                    ),
                  ],
                ),
                  ),
                   //tabs
                   bottom: TTapBar(
                    tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                   ],
                    )
                   ),
          ];
        }, 
        //body
        body: TabBarView(
          children: [
           TCategoryTab(),
           TCategoryTab(),
           TCategoryTab(),
           TCategoryTab(),
           TCategoryTab(),
          ],
          ),
          ),
      ),
    );
  }
}


