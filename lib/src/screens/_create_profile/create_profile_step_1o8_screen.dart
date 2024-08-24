import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/components/question_with_icon.dart';

class CreateProfileStep1o8Screen extends StatefulWidget {
  const CreateProfileStep1o8Screen({super.key});

  @override
  State<CreateProfileStep1o8Screen> createState() =>
      _CreateProfileStep1o8ScreenState();
}

class _CreateProfileStep1o8ScreenState
    extends State<CreateProfileStep1o8Screen> {
  final List<String> smokeOptions = [
    LocaleKeys.create_profile_step_1o8_screen_smoke_yes.tr(),
    LocaleKeys.create_profile_step_1o8_screen_smoke_no.tr(),
  ];

  final List<String> alcoolOptions = [
    LocaleKeys.create_profile_step_1o8_screen_alcool_never.tr(),
    LocaleKeys.create_profile_step_1o8_screen_alcool_often.tr(),
    LocaleKeys.create_profile_step_1o8_screen_alcool_party.tr(),
    LocaleKeys.create_profile_step_1o8_screen_alcool_regulary.tr(),
  ];

  String _smoke = '';
  String _alcool = '';

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
                  QuestionWithIcon(
                    title: LocaleKeys.create_profile_step_1o8_screen_smoke.tr(),
                    iconPath: AppAssets.smokeIcon,
                    options: smokeOptions,
                    selectedOption: _smoke,
                    onOptionSelected: (option) =>
                        setState(() => _smoke = option),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  QuestionWithIcon(
                    title:
                        LocaleKeys.create_profile_step_1o8_screen_alcool.tr(),
                    iconPath: AppAssets.alcoolIcon,
                    options: alcoolOptions,
                    selectedOption: _alcool,
                    onOptionSelected: (option) =>
                        setState(() => _alcool = option),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const SizedBox(
                    height: 48,
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
