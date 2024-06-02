import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:my_ecommerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:my_ecommerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: TAppBar(title: Text('Reviews & Ratings'),showBackArrow: true,),

      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rating and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: TSizes.spaceBtwItems),

              //Overall product Rating
              TOverallProductRating(),
              TRatingBarIndicator(rating: 3.5),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: TSizes.spaceBtwSections),

              // User Reviews List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),

            ],
          ),
          ),
        

      ),
    );
  }
}





