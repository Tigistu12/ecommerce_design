import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:my_ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:my_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:my_ecommerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:my_ecommerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:my_ecommerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:my_ecommerce_app/navigation_menu.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Reviews',style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Items in cart
              TCartItems(showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtwSections),

              // coupons TextField
              TCouponCode(),
              SizedBox(height: TSizes.spaceBtwSections),

              //Billing Section
              TRoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark? TColors.black:TColors.white,
                child: Column(
                  children: [
                    //pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Payment methods
                    TBillingPaymentSection(),
                     SizedBox(height: TSizes.spaceBtwItems),
                    // Address
                    TBillingAddressSection()
                  ],
                ),
              ),

            ],
          ),
        ),
      ),


         //check out button
    bottomNavigationBar: Padding(
      padding:  EdgeInsets.all(TSizes.defaultSpace),
      child: ElevatedButton(
        onPressed: () => Get.to(
          () => SucessScreen(
            image: TImages.successfulPaymentIcon,
            title: 'Payment Success',
            subTitle: 'Your item will be shipped soon!',
            onPressed: () => Get.offAll(()=> NavigationMenu()),
          ),
          ),
           child: Text('Checkout\$256.0')),
    ),
    );
  }
}

