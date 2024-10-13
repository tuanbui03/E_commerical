
import 'package:e_commerical/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerical/utils/constants/colors.dart';
import 'package:e_commerical/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// Brand top 3 products img
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: TRoundedContainer(
          height: 100,
          padding: const EdgeInsets.all(TSizes.md),
          margin: const EdgeInsets.only(right: TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        child:
          Image(fit: BoxFit.contain, image: AssetImage(TImages.productImage1)),
    ));
  }
}
