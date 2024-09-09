import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/select_widget.dart';

class EditProfileUserSideScreen extends StatefulWidget {
  @override
  State<EditProfileUserSideScreen> createState() =>
      _EditProfileUserSideScreen();
}

class _EditProfileUserSideScreen extends State<EditProfileUserSideScreen> {
  void setSelectedValue(String? value, int id) {
    setState(() {
      choicesList[id].selectedValue = value;
    });
  }

  List<Choise> choicesList = [
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_city.tr(),
      id: 0,
      selectedValue: 'Douala',
      isCenter: true,
      icon: Icons.location_city_outlined,
      choices: ['Douala', 'Yaoundé', 'Bafoussam'],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_height.tr(),
      id: 1,
      selectedValue: '(151cm-199cm)',
      isCenter: false,
      icon: Icons.straighten_sharp,
      rotate: true,
      choices: ['151cm', '170cm', '199cm'],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_weight.tr(),
      id: 2,
      selectedValue: '(60kg à 90kg)',
      isCenter: false,
      icon: Icons.balance_rounded,
      choices: ['60kg', '75kg', '90kg'],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_children.tr(),
      id: 3,
      selectedValue: 'Oui',
      isCenter: false,
      icon: Icons.groups,
      choices: ['Oui', 'Non'],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_smoking.tr(),
      id: 4,
      selectedValue: 'Oui',
      isCenter: false,
      icon: Icons.smoking_rooms,
      choices: ['Oui', 'Non'],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_alcohol.tr(),
      id: 5,
      selectedValue: 'En soirée',
      isCenter: false,
      icon: Icons.local_bar,
      choices: [
        'En soirée',
        'Jamais',
        'Régulièrement',
      ],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_search.tr(),
      id: 6,
      selectedValue: 'Amitié, relation libre',
      isCenter: false,
      icon: Icons.favorite_outline_rounded,
      choices: [
        'Amitié',
        'Relation libre',
        'Mariage',
      ],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_diploma.tr(),
      id: 7,
      selectedValue: 'Aucun',
      isCenter: false,
      icon: Icons.school,
      choices: ['Aucun', 'Baccalauréat', 'Master'],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_living.tr(),
      id: 8,
      selectedValue: 'Seul',
      isCenter: false,
      icon: Icons.groups,
      choices: ['Seul', 'En colocation', 'En famille'],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_sexual_preference.tr(),
      id: 9,
      selectedValue: 'Hétéro',
      isCenter: false,
      bottomSwichtText:
          LocaleKeys.edit_profile_user_side_screen_mask_option.tr(),
      icon: Icons.transgender_outlined,
      choices: [
        'Hétéro',
        'Bisexuel',
        'Homosexuel',
      ],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_ethnic_type.tr(),
      id: 10,
      selectedValue: 'Africaine',
      isCenter: false,
      icon: Icons.groups,
      choices: [
        'Africaine',
        'Européenne',
        'Asiatique',
      ],
    ),
    Choise(
      label: LocaleKeys.edit_profile_user_side_screen_religion.tr(),
      id: 11,
      selectedValue: 'Islam',
      isCenter: false,
      icon: Icons.groups,
      choices: [
        'Islam',
        'Christianisme',
        'Bouddhisme',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                      color: AppColors.primary,
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
                      color: AppColors.myDark,
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
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 4,
              ),
              child: Text(
                LocaleKeys.edit_profile_user_side_screen_gender_male.tr(),
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(101, 110, 123, 1),
                  fontWeight: FontWeight.w800,
                  fontSize: 19,
                ),
              ),
            ),
            for (int i = 0; i < choicesList.length; i++)
              SelectWidget(
                item: choicesList[i],
                setSelectedValue: setSelectedValue,
              ),
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
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
