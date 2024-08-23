import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/question_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/resources/app_assets.dart';

class CreateProfileStep1o7Screen extends StatefulWidget {
  const CreateProfileStep1o7Screen({super.key});

  @override
  State<CreateProfileStep1o7Screen> createState() =>
      _CreateProfileStep1o7ScreenState();
}

class _CreateProfileStep1o7ScreenState
    extends State<CreateProfileStep1o7Screen> {
  final List<String> hasChildrenOptions = [
    LocaleKeys.create_profile_step_1o7_screen_children_yes.tr(),
    LocaleKeys.create_profile_step_1o7_screen_children_no.tr(),
  ];

  final List<String> degrees = [
    LocaleKeys.create_profile_step_1o7_screen_degree_none.tr(),
    LocaleKeys.create_profile_step_1o7_screen_degree_bac.tr(),
    LocaleKeys.create_profile_step_1o7_screen_degree_master.tr(),
    LocaleKeys.create_profile_step_1o7_screen_degree_doctor.tr(),
  ];

  String _hasChildren = '';
  String _degree = '';

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
                '8/11',
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    title:
                        LocaleKeys.create_profile_step_1o7_screen_children.tr(),
                    iconPath: AppAssets.babyIcon,
                    options: hasChildrenOptions,
                    selectedOption: _hasChildren,
                    onOptionSelected: (option) =>
                        setState(() => _hasChildren = option),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  QuestionWithIcon(
                    title:
                        LocaleKeys.create_profile_step_1o7_screen_degree.tr(),
                    iconPath: AppAssets.degreeIcon,
                    options: degrees,
                    selectedOption: _degree,
                    onOptionSelected: (option) =>
                        setState(() => _degree = option),
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
