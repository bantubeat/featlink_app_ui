import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/_discovery/widgets/pub_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'widgets/search_categary_item.dart';

class DiscoverySearch1Screen extends StatelessWidget {
  const DiscoverySearch1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AppColors.myBlue.withOpacity(0.2),
              AppColors.primary.withOpacity(0.2),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  LocaleKeys.discovery_search_1_screen_title.tr(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  LocaleKeys.discovery_search_1_screen_pub.tr(),
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
                            '${LocaleKeys.discovery_search_1_screen_publicity.tr()}  ',
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text:
                            LocaleKeys.discovery_search_1_screen_know_more.tr(),
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Column(
                  children: [
                    SearchCategoryItem(
                      buttonText: LocaleKeys
                          .discovery_search_1_screen_special_search
                          .tr(),
                      image: AppAssets.specialSearchImage,
                      onPressed: (context) {},
                    ),
                    const SizedBox(height: 10),
                    SearchCategoryItem(
                      buttonText: LocaleKeys
                          .discovery_search_1_screen_in_your_city
                          .tr(),
                      image: AppAssets.inCityImage,
                      onPressed: (context) {},
                    ),
                    const SizedBox(height: 10),
                    SearchCategoryItem(
                      buttonText:
                          LocaleKeys.discovery_search_1_screen_first_day.tr(),
                      image: AppAssets.firstTimeImage,
                      onPressed: (context) {},
                    ),
                    const SizedBox(height: 10),
                    SearchCategoryItem(
                      buttonText:
                          LocaleKeys.discovery_search_1_screen_communities.tr(),
                      image: AppAssets.communityImage,
                      onPressed: (context) {},
                    ),
                    const SizedBox(height: 10),
                    SearchCategoryItem(
                      buttonText:
                          LocaleKeys.discovery_search_1_screen_vip_clup.tr(),
                      image: AppAssets.clubVipImage,
                      onPressed: (context) {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
