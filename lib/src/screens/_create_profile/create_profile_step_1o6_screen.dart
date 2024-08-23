import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/components/question_with_icon.dart';

class CreateProfileStep1o6Screen extends StatefulWidget {
  const CreateProfileStep1o6Screen({super.key});

  @override
  State<CreateProfileStep1o6Screen> createState() =>
      _CreateProfileStep1o6ScreenState();
}

class _CreateProfileStep1o6ScreenState
    extends State<CreateProfileStep1o6Screen> {
  final List<String> sizes = [
    LocaleKeys.create_profile_step_1o6_screen_size_small.tr(),
    LocaleKeys.create_profile_step_1o6_screen_size_medium.tr(),
    LocaleKeys.create_profile_step_1o6_screen_size_tall.tr(),
  ];

  final List<String> weights = [
    LocaleKeys.create_profile_step_1o6_screen_weight_light.tr(),
    LocaleKeys.create_profile_step_1o6_screen_weight_medium.tr(),
    LocaleKeys.create_profile_step_1o6_screen_weight_heavy.tr(),
  ];

  String _weight = '';
  String _size = '';

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
                '7/11',
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
                      LocaleKeys.create_profile_step_1o6_screen_title.tr(),
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
                    title: LocaleKeys.create_profile_step_1o6_screen_size.tr(),
                    iconPath: AppAssets.sizeIcon,
                    options: sizes,
                    selectedOption: _size,
                    onOptionSelected: (option) =>
                        setState(() => _size = option),
                    optionsFlex: 2,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  QuestionWithIcon(
                    title:
                        LocaleKeys.create_profile_step_1o6_screen_weight.tr(),
                    iconPath: AppAssets.sizeIcon,
                    options: weights,
                    selectedOption: _weight,
                    onOptionSelected: (option) =>
                        setState(() => _weight = option),
                    optionsFlex: 2,
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
