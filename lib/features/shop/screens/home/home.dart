
import 'package:e_commerical/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerical/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerical/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerical/common/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:e_commerical/common/widgets/texts/section_heading.dart';
import 'package:e_commerical/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerical/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerical/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerical/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerical/utils/constants/image_strings.dart';
import 'package:e_commerical/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar
                  TSearchContainer(text: "Search in store"),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        THomeCategories()
                      ],
                    ),
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Slide
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Heading
                  TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProduct())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Popular Product
                  TGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
