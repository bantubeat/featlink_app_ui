import 'dart:math' show min;

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gender_choice_chip.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class CreateProfileStep1o1Screen extends StatefulWidget {
  @override
  State<CreateProfileStep1o1Screen> createState() =>
      _CreateProfileStep1o1ScreenState();
}

class _CreateProfileStep1o1ScreenState
    extends State<CreateProfileStep1o1Screen> {
  String selectedGender = LocaleKeys.common_gender_female.tr();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, size: 40),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      LocaleKeys.create_profile_step_1o1_screen_wording_text
                          .tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox.square(
                      child: Center(
                        child: Image.asset(
                          width: 100,
                          height: 100,
                          AppAssets.contractImage,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: SizedBox.square(
                                  dimension: min(150, screenSize.width - 250),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 36,
                                    backgroundImage: AssetImage(
                                      AppAssets.profileImage,
                                    ), // Image de profil
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        LocaleKeys
                                            .create_profile_step_1o1_screen_profile_name
                                            .tr(),
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Pierre',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      LocaleKeys.create_profile_step_1o1_screen_i_am.tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      LocaleKeys.create_profile_step_1o1_screen_profile_note
                          .tr(),
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GenderChoiceChip(
                          text: LocaleKeys.common_gender_male.tr(),
                          selectedValue: selectedGender,
                          onSelected: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: GenderChoiceChip(
                          text: LocaleKeys.common_gender_female.tr(),
                          selectedValue: selectedGender,
                          onSelected: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GenderChoiceChip(
                          text: LocaleKeys.common_gender_other.tr(),
                          selectedValue: selectedGender,
                          onSelected: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          PrimaryButton(
            text: LocaleKeys.common_next.tr(),
            onPressed: (_) {},
            fontSize: 24,
          ),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
