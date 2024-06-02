import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce_app/common/widgets/products/product_cards/produtc-card_vertical.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name','Higher Price','Lower Price','Sale','Newest','Popularity'].
          map((option) => DropdownMenuItem(value: option, child: Text(option)))
          .toList(),
           ),
           SizedBox(height: TSizes.spaceBtwSections),
    
           // products
           TGridLayout(itemCount: 6, itemBuilder: (_,index)=> TProductCardVertical())
      ],
    );
  }
}