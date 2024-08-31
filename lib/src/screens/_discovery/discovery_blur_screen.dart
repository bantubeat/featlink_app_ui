import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'widgets/discover_item.dart';

class DiscoveryBlurScreen extends StatefulWidget {
  const DiscoveryBlurScreen({super.key});

  @override
  State<DiscoveryBlurScreen> createState() => _DiscoveryBlurScreenState();
}

class _DiscoveryBlurScreenState extends State<DiscoveryBlurScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(
                        AppAssets.discoveryBlurScreenHeaderImage,
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        AppColors.myWhite.withOpacity(0.2),
                        BlendMode.screen,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      LocaleKeys.discovery_blur_screen_title.tr(),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: AppColors.myBlue,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      weight: 50,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                LocaleKeys.discovery_blur_screen_sub_title.tr(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                LocaleKeys.discovery_blur_screen_description.tr(),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    text: LocaleKeys.discovery_blur_screen_buy_access.tr(),
                    onPressed: (_) {},
                    fixedSize: const Size.fromHeight(20),
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColors.myGray,
            ),
            const SizedBox(height: 15),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 15,
                runSpacing: 15,
                children: [
                  for (int i = 0; i < 9; i++)
                    DiscoveryItem(
                      name: 'Jane Doe',
                      image: AppAssets.fakeDiscoveryImage,
                      isLocked: true,
                      haveDot: i % 3 == 0 ? true : false,
                      age: '25',
                      gender: LocaleKeys.discovery_in_my_city_screen_woman.tr(),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
