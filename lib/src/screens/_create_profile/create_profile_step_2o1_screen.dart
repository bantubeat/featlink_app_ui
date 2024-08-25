import 'package:featlink_app/src/components/form/input_checkbox_field.dart';
import 'package:featlink_app/src/components/gender_choice_chip.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';

class CreateProfileStep2o1Screen extends StatefulWidget {
  const CreateProfileStep2o1Screen({super.key});

  @override
  State<CreateProfileStep2o1Screen> createState() =>
      _CreateProfileStep2o1ScreenState();
}

class _CreateProfileStep2o1ScreenState
    extends State<CreateProfileStep2o1Screen> {
  // Gender Options
  final List<String> genderOptions = [
    LocaleKeys.create_profile_step_2o1_screen_gender_male.tr(),
    LocaleKeys.create_profile_step_2o1_screen_gender_female.tr(),
    LocaleKeys.create_profile_step_2o1_screen_gender_other.tr(),
  ];

// Relation Options
  final List<String> relationOptions = [
    LocaleKeys.create_profile_step_2o1_screen_relation_love.tr(),
    LocaleKeys.create_profile_step_2o1_screen_relation_wedding.tr(),
    LocaleKeys.create_profile_step_2o1_screen_relation_friendship.tr(),
    LocaleKeys.create_profile_step_2o1_screen_relation_pro.tr(),
    LocaleKeys.create_profile_step_2o1_screen_relation_free.tr(),
    LocaleKeys.create_profile_step_2o1_screen_relation_side.tr(),
  ];

// Desirs Options
  final List<String> desirsOptions = [
    LocaleKeys.create_profile_step_2o1_screen_desirs_dialog.tr(),
    LocaleKeys.create_profile_step_2o1_screen_desirs_me_and_you.tr(),
    LocaleKeys.create_profile_step_2o1_screen_desirs_group.tr(),
    LocaleKeys.create_profile_step_2o1_screen_desirs_trio.tr(),
    LocaleKeys.create_profile_step_2o1_screen_desirs_candaulism.tr(),
    LocaleKeys.create_profile_step_2o1_screen_desirs_exibitionnism.tr(),
    LocaleKeys.create_profile_step_2o1_screen_desirs_domina.tr(),
    LocaleKeys.create_profile_step_2o1_screen_design_changing.tr(),
    LocaleKeys.create_profile_step_2o1_screen_design_between_couple.tr(),
  ];

  String gender = LocaleKeys.create_profile_step_2o1_screen_gender_male.tr();
  List<String> relations = [];
  List<String> desirs = [];

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
                '1/3',
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        LocaleKeys.create_profile_step_2o1_screen_title.tr(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      LocaleKeys.create_profile_step_2o1_screen_subtitle.tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      LocaleKeys.create_profile_step_2o1_screen_gender.tr(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      LocaleKeys.create_profile_step_2o1_screen_gender_details
                          .tr(),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: List.generate(genderOptions.length, (index) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: GenderChoiceChip(
                              text: genderOptions[index],
                              selectedValue: gender,
                              onSelected: (value) {
                                setState(() {
                                  gender = value;
                                });
                              },
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      LocaleKeys.create_profile_step_2o1_screen_relations.tr(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      LocaleKeys
                          .create_profile_step_2o1_screen_relation_subtitle
                          .tr(),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(relationOptions.length, (index) {
                        return InputCheckboxField(
                          label: Text(relationOptions[index]),
                          isChecked: relations.contains(relationOptions[index]),
                          onChanged: (value) {
                            setState(() {
                              if (relations.contains(relationOptions[index])) {
                                relations.remove(relationOptions[index]);
                              } else {
                                relations.add(relationOptions[index]);
                              }
                            });
                          },
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      LocaleKeys.create_profile_step_2o1_screen_desirs.tr(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      LocaleKeys.create_profile_step_2o1_screen_desirs_subtitle
                          .tr(),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(6, (index) {
                            return InputCheckboxField(
                              label: Text(
                                desirsOptions[index],
                              ),
                              isChecked:
                                  relations.contains(desirsOptions[index]),
                              onChanged: (value) {
                                setState(() {
                                  if (relations
                                      .contains(desirsOptions[index])) {
                                    relations.remove(desirsOptions[index]);
                                  } else {
                                    relations.add(desirsOptions[index]);
                                  }
                                });
                              },
                            );
                          }),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(3, (index) {
                            return InputCheckboxField(
                              label: Text(
                                desirsOptions[6 + index],
                              ),
                              isChecked: desirs.contains(desirsOptions[index]),
                              onChanged: (value) {
                                setState(() {
                                  if (desirs.contains(desirs[index])) {
                                    desirs.remove(desirs[index]);
                                  } else {
                                    desirs.add(desirs[index]);
                                  }
                                });
                              },
                            );
                          }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
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
