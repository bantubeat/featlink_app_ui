import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/select_widget.dart';

class EditProfileUserSideScreen extends StatefulWidget {
  @override
  State<EditProfileUserSideScreen> createState() =>
      _EditProfileUserSideScreen();
}

class _EditProfileUserSideScreen extends State<EditProfileUserSideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 40,
            alignment: WrapAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  LocaleKeys.edit_profile_user_side_screen_data.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.myDark,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  LocaleKeys.edit_profile_user_side_screen_hooks.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.primary,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  LocaleKeys.edit_profile_user_side_screen_interests.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.myDark,
                  ),
                ),
              ),
            ],
          ),
          // SelectWidget(),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: PrimaryButton(
              onPressed: (_) {},
              fontSize: 19,
              fontWeight: FontWeight.bold,
              text: LocaleKeys.edit_profile_user_side_screen_save.tr(),
            ),
          ),
          const SizedBox(
            height: 110,
          ),
        ],
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
