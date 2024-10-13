import 'package:e_commerical/common/widgets/appbar/appbar.dart';
import 'package:e_commerical/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerical/common/widgets/products/product_cart/product_cart_horizontal.dart';
import 'package:e_commerical/common/widgets/texts/section_heading.dart';
import 'package:e_commerical/utils/constants/image_strings.dart';
import 'package:e_commerical/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Test'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(
                  imageUrl: TImages.promoBanner3,
                  width: double.infinity,
                  applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sub Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Test 2', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
