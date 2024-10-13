import 'package:e_commerical/common/widgets/appbar/appbar.dart';
import 'package:e_commerical/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerical/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerical/common/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:e_commerical/features/shop/screens/home/home.dart';
import 'package:e_commerical/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
