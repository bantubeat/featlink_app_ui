import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/src/screens/_create_profile/create_profile_step_1o9_screen/custom_choice_select.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/resources/app_assets.dart';

class CreateProfileStep1o9Screen extends StatefulWidget {
  const CreateProfileStep1o9Screen({super.key});

  @override
  State<CreateProfileStep1o9Screen> createState() =>
      _CreateProfileStep1o9ScreenState();
}

class _CreateProfileStep1o9ScreenState
    extends State<CreateProfileStep1o9Screen> {
  final List<String> sexualOptions = [
    LocaleKeys.create_profile_step_1o9_screen_sexual_men.tr(),
    LocaleKeys.create_profile_step_1o9_screen_sexual_women.tr(),
  ];

  final List<String> originOptions = [
    LocaleKeys.create_profile_step_1o9_screen_origin_option_1.tr(),
    LocaleKeys.create_profile_step_1o9_screen_origin_option_2.tr(),
  ];

  final List<String> residenceOptions = [
    LocaleKeys.create_profile_step_1o9_screen_residence_option_1.tr(),
    LocaleKeys.create_profile_step_1o9_screen_residence_option_2.tr(),
  ];

  String sexualPreference = '';
  String origin = '';
  String residence = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, size: 40),
        ),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                '9/11',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      LocaleKeys.create_profile_step_1o8_screen_title.tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomChoiceSelect(
                    value: sexualPreference,
                    setSelectedValue: (selectedValue) => {
                      setState(
                        () {
                          sexualPreference = selectedValue ?? '';
                        },
                      ),
                    },
                    options: sexualOptions,
                    iconPath: AppAssets.genderIcon,
                    title: LocaleKeys
                        .create_profile_step_1o9_screen_sexual_preference
                        .tr(),
                  ),
                  const SizedBox(height: 32),
                  CustomChoiceSelect(
                    value: origin,
                    setSelectedValue: (selectedValue) => {
                      setState(
                        () {
                          origin = selectedValue ?? '';
                        },
                      ),
                    },
                    options: originOptions,
                    iconPath: AppAssets.handsUpIcon,
                    title:
                        LocaleKeys.create_profile_step_1o9_screen_origine.tr(),
                  ),
                  const SizedBox(height: 32),
                  CustomChoiceSelect(
                    value: residence,
                    setSelectedValue: (selectedValue) => {
                      setState(
                        () {
                          residence = selectedValue ?? '';
                        },
                      ),
                    },
                    options: residenceOptions,
                    iconPath: AppAssets.moonSliceIcon,
                    title: LocaleKeys.create_profile_step_1o9_screen_residence
                        .tr(),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: PrimaryButton(
              text: LocaleKeys.common_next.tr(),
              onPressed: (_) {},
              fontSize: 16,
            ),
          ),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
