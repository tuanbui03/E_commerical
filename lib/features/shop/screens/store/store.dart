import 'package:e_commerical/common/widgets/appbar/appbar.dart';
import 'package:e_commerical/common/widgets/appbar/tabbar.dart';
import 'package:e_commerical/common/widgets/brand/brand_card.dart';
import 'package:e_commerical/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerical/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerical/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerical/common/widgets/texts/section_heading.dart';
import 'package:e_commerical/features/shop/screens/brand/all_brands.dart';
import 'package:e_commerical/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerical/utils/constants/colors.dart';
import 'package:e_commerical/utils/constants/sizes.dart';
import 'package:e_commerical/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// Search bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        /// Featured Brands
                        TSectionHeading(
                            title: 'Featured Brands',
                            onPressed: () =>
                                Get.to(() => const AllBrandScreen())),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        /// Brands Grid
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: false);
                            })
                      ],
                    ),
                  ),

                  /// Tabs
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Foods')),
                      Tab(child: Text('Toys')),
                      Tab(child: Text('Home')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Test')),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab()
            ],
          ),
        ),
      ),
    );
  }
}
