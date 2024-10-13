
import 'package:e_commerical/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerical/common/widgets/images/t_circular_image.dart';
import 'package:e_commerical/common/widgets/texts/product_price_text.dart';
import 'package:e_commerical/common/widgets/texts/product_title_text.dart';
import 'package:e_commerical/common/widgets/texts/t_brand_title_with_verfied_icon.dart';
import 'package:e_commerical/utils/constants/colors.dart';
import 'package:e_commerical/utils/constants/image_strings.dart';
import 'package:e_commerical/utils/constants/sizes.dart';
import 'package:e_commerical/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/enums.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
   super.key
});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            /// Price
            Text('\$123', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '1234', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Title
        const TProductTitleText(title: 'Dem nay ai dua em ve?'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.google,
              width: 30,
              height: 30,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Hanoi', brandTextSize: TextSize.medium),
          ],
        ),
      ],
    );
  }
}