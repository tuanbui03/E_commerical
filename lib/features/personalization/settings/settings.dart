import 'package:e_commerical/common/widgets/appbar/appbar.dart';
import 'package:e_commerical/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerical/common/widgets/list_title/settings_menu_tile.dart';
import 'package:e_commerical/common/widgets/texts/section_heading.dart';
import 'package:e_commerical/features/personalization/screen/address/adddress.dart';
import 'package:e_commerical/features/shop/screens/order/order.dart';
import 'package:e_commerical/utils/constants/colors.dart';
import 'package:e_commerical/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/list_title/user_profile_title.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// Header
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              /// AppBar
              TAppBar(
                  title: Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white))),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// User Profile Card
              const TUserProfileTitle(),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          )),

          /// Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Account & Settings
                const TSectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),

                TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set Shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen())),
                TSettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Cart',
                  subTitle: 'Anh yeu em 123',
                  onTap: () {},
                ),
                TSettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Order',
                  subTitle: 'Anh yeu em 123',
                  onTap: () => Get.to(() => const OrderScreen()),
                ),
                TSettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Coupons',
                  subTitle: 'Anh yeu em 123',
                  onTap: () {},
                ),
                TSettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'Notifications',
                  subTitle: 'Anh yeu em 123',
                  onTap: () {},
                ),

                /// App Settings
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(
                    title: 'App Settings', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load data',
                    subTitle: 'Upload to Firebase'),
                TSettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set recommendation based on location',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                TSettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: '???',
                  subTitle: 'True true true',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                TSettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'T_T',
                  subTitle: 'Go go go',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),

                /// Logout button
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('Logout')),
                ),
                const SizedBox(height: TSizes.spaceBtwSections * 2)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
