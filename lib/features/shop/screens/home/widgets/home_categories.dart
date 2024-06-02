import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:my_ecommerce_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';


class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(image: TImages.shoeIcon,title: 'Shoes',onTap: ()=> Get.to(()=> SubCategoriesScreen()),);
        },
      ),
    );
  }
}
