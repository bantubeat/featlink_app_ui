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
  List<String> choices = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
    'Arts',
  ];

  void setSelectedValue(String? value) {
    setState(() => selectedValue = value);
  }

  String? selectedValue = 'News';
  @override
  Widget build(BuildContext context) {
    List<Choise> choicesList = [
      Choise(
        label: 'Ville',
        choices: choices,
        id: 0,
        selectedValue: 'Douala',
        isCenter: true,
      ),
      Choise(
        label: 'Taille',
        choices: choices,
        id: 0,
        selectedValue: '(151cm-199cm)',
        isCenter: false,
      ),
      Choise(
        label: 'Poids',
        choices: choices,
        id: 0,
        selectedValue: '(60kg à 90kg)',
        isCenter: false,
      ),
      Choise(
        label: 'Enfants',
        choices: choices,
        id: 0,
        selectedValue: 'Oui',
        isCenter: false,
      ),
      Choise(
        label: 'Cigarette',
        choices: choices,
        id: 0,
        selectedValue: 'Oui',
        isCenter: false,
      ),
      Choise(
        label: 'Alcool',
        choices: choices,
        id: 0,
        selectedValue: 'En soirée',
        isCenter: false,
      ),
      Choise(
        label: 'Recherche',
        choices: choices,
        id: 0,
        selectedValue: 'Amitié, relation libre',
        isCenter: false,
      ),
      Choise(
        label: 'Diplôme',
        choices: choices,
        id: 0,
        selectedValue: 'Aucun',
        isCenter: false,
      ),
      Choise(
        label: 'Vie',
        choices: choices,
        id: 0,
        selectedValue: 'Seul',
        isCenter: false,
      ),
      Choise(
        label: 'Préf.Sexuel',
        choices: choices,
        id: 0,
        selectedValue: 'Hétéro',
        isCenter: false,
      ),
      Choise(
        label: 'Type Ethnique',
        choices: choices,
        id: 0,
        selectedValue: 'Africaine',
        isCenter: false,
      ),
      Choise(
        label: 'Réligion',
        choices: choices,
        id: 0,
        selectedValue: 'Islam',
        isCenter: false,
      ),
    ];

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
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                'Homme',
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
