import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/_discovery/widgets/pub_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'widgets/search_profile_type_item.dart';

class DiscoverySearch2Screen extends StatelessWidget {
  const DiscoverySearch2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      LocaleKeys.discovery_search_2_screen_title.tr(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                LocaleKeys.discovery_search_2_screen_pub.tr(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const PubSlider(),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          '${LocaleKeys.discovery_search_2_screen_publicity.tr()}  ',
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: LocaleKeys.discovery_search_2_screen_know_more.tr(),
                      style: const TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                style: const TextStyle(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              color: AppColors.myGray600,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    LocaleKeys.discovery_search_2_screen_find_profile.tr(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: 150,
                  child: const Divider(
                    color: AppColors.primary,
                    thickness: 4,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                spacing: 10.0,
                alignment: WrapAlignment.spaceAround,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 10.0,
                children: [
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
                  ),
                  SearchProfileTypeItem(
                    image: AppAssets.inCityImage,
                    lable: 'Skinny Girl',
                    onTap: () {},
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
