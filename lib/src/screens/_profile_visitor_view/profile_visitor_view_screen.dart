import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/long_text_expand.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/heading_profile.dart';
import 'widgets/interest_item_widget.dart';
import 'widgets/profile_images_stylizer_widget.dart';
import 'widgets/profile_info_data.dart';

class ProfileVisitorViewScreen extends StatelessWidget {
  const ProfileVisitorViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      AppAssets.fakeProfile1Image,
      AppAssets.fakeProfile2Image,
      AppAssets.fakeProfile3Image,
      AppAssets.fakeProfile4Image,
    ];
    return Scaffold(
      backgroundColor: AppColors.myGray,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingProfile(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              color: AppColors.myWhite,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Clarinette',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  LongTextExpand(
                    text:
                        'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quaerat, officia? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quaerat, officia?, Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quaerat, officia?',
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              color: AppColors.myWhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      LocaleKeys.profile_visitor_view_screen_about.tr(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.cityIcon,
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 10),
                      const Text('Douala', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(width: 10),
                  const Flexible(
                    child: Text(
                      'Cameroun',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            const ProfileInfoData(
              text: 'Femme',
              svgIcon: AppAssets.transgenderIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: '25 ans',
              svgIcon: AppAssets.calendarNumberIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: '(160cm - 170cm)',
              svgIcon: AppAssets.rulerIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: '60 kg - 80 kg',
              svgIcon: AppAssets.scalesIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: 'Oui',
              svgIcon: AppAssets.peopleCommunityIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: 'Oui',
              imageIcon: AppAssets.smokerIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: 'En Soirée',
              svgIcon: AppAssets.drinkIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: 'Aucun',
              svgIcon: AppAssets.hatGraduationIcon,
            ),
            const ProfileInfoData(
              text: 'Seul',
              svgIcon: AppAssets.peopleTeamIcon,
            ),
            const SizedBox(height: 10),
            const ProfileInfoData(
              text: 'Amitié, relation libre',
              svgIcon: AppAssets.heartLineIcon,
            ),
            const SizedBox(height: 10),
            ProfileImageStylizerWidget(image: images[0]),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              color: AppColors.myWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.profile_visitor_view_screen_interests.tr(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      InterestItemWidget(text: 'Sport'),
                      InterestItemWidget(text: 'Live Music'),
                      InterestItemWidget(text: 'Cooking'),
                      InterestItemWidget(text: 'Football'),
                      InterestItemWidget(text: 'Dansing'),
                      InterestItemWidget(text: 'Reading'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ProfileImageStylizerWidget(image: images[1]),
            ProfileImageStylizerWidget(image: images[2]),
            ProfileImageStylizerWidget(image: images[3]),
            const SizedBox(height: 150),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
