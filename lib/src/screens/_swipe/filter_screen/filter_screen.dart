import 'dart:developer';

import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/screens/_swipe/filter_screen/widgets/custom_radio.dart';
import 'package:featlink_app/src/screens/_swipe/filter_screen/widgets/custom_switch.dart';
import 'package:featlink_app/src/screens/_swipe/filter_screen/widgets/progress_slider.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  Country? selectedCountry;
  int selectedGenderIndex = 0;

  void handleShowCountryPicker(BuildContext context) {
    showCountryPicker(
      context: context,
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country;
        });
      },
    );
  }

  double minAge = 18;
  double maxAge = 30;

  List<dynamic> genderList = [
    {'name': LocaleKeys.filter_screen_gender_male.tr(), 'selected': true},
    {'name': LocaleKeys.filter_screen_gender_female.tr(), 'selected': false},
    {'name': LocaleKeys.filter_screen_gender_c.tr(), 'selected': false},
    {'name': LocaleKeys.filter_screen_gender_other.tr(), 'selected': false},
  ];
  List<dynamic> genderList2 = [
    {'name': LocaleKeys.filter_screen_heterosexual_label.tr()},
    {'name': LocaleKeys.filter_screen_gay_label.tr()},
    {'name': LocaleKeys.filter_screen_lesbienne_label.tr()},
    {'name': LocaleKeys.filter_screen_gender_other.tr()},
  ];
  List<dynamic> parterSearchList = [
    {'name': LocaleKeys.filter_screen_sincere_love.tr(), 'selected': false},
    {'name': LocaleKeys.filter_screen_marriage.tr(), 'selected': false},
    {'name': LocaleKeys.filter_screen_friendship.tr(), 'selected': false},
    {
      'name': LocaleKeys.filter_screen_professional_relationship.tr(),
      'selected': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Text(
          LocaleKeys.filter_screen_title.tr(),
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.filter_screen_title_header_one.tr(),
                      style: const TextStyle(
                        color: AppColors.secondary,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      LocaleKeys.filter_screen_title_header_two.tr(),
                      style: const TextStyle(
                        color: AppColors.secondary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      LocaleKeys.filter_screen_my_i_partner.tr(),
                      style: const TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Center(
                    child: Wrap(
                      spacing: 30,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: genderList
                          .map(
                            (gender) => Column(
                              children: [
                                Text(gender['name']),
                                Transform.scale(
                                  scale: 0.6,
                                  child: Switch(
                                    activeTrackColor:
                                        AppColors.bantubeatPrimary,
                                    activeColor: AppColors.myWhite,
                                    value: gender['selected'],
                                    onChanged: (value) {
                                      setState(() {
                                        for (var g in genderList) {
                                          g['selected'] = false;
                                        }
                                        gender['selected'] = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      LocaleKeys.filter_screen_my_i_partner.tr(),
                      style: const TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Column(
                    children: genderList2.asMap().entries.map((e) {
                      int index = e.key;
                      var gender = e.value;
                      return CustomRadio(
                        labes: gender['name'],
                        groupe: selectedGenderIndex,
                        value: index,
                        onChanged: (r) {
                          log('message');

                          setState(() {
                            selectedGenderIndex = r!;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.4,
                        color: AppColors.myGray,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomSwitch(
                              value: false,
                              label: 'BZC',
                              onChanged: (e) {},
                            ),
                            CustomSwitch(
                              value: true,
                              label: LocaleKeys.filter_screen_all_place.tr(),
                              onChanged: (e) {},
                            ),
                          ],
                        ),
                        CustomSwitch(
                          value: true,
                          labelSize: 11,
                          switchSize: 0.5,
                          label: LocaleKeys.filter_screen_applye_to_all.tr(),
                          onChanged: (e) {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.4,
                        color: AppColors.myGray,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // LinearProgressIndicator(),
                        InkWell(
                          onTap: () => handleShowCountryPicker(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(selectedCountry?.name ?? 'Cameroun'),
                              const Icon(Icons.expand_more),
                            ],
                          ),
                        ),
                        CustomSwitch(
                          value: false,
                          label: LocaleKeys.filter_screen_all_place.tr(),
                          onChanged: (e) {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.4,
                        color: AppColors.myGray,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(minAge.toStringAsFixed(0)),
                            const Text(' ans'),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Icon(Icons.minimize_rounded),
                            ),
                            Text(maxAge.toStringAsFixed(0)),
                            const Text(' ans'),
                          ],
                        ),
                        ProgressIntervalSlider(
                          sliderStartValue: (minAge / 100),
                          sliderEndValue: (maxAge / 100),
                          onRangeChanged: (min, max) {
                            setState(() {
                              minAge = min * 100;
                              maxAge = max * 100;
                            });
                            // Handle slider change
                          },
                        ),
                        CustomSwitch(
                          value: true,
                          labelSize: 11,
                          switchSize: 0.5,
                          label: LocaleKeys.filter_screen_applye_to_all.tr(),
                          onChanged: (e) {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      LocaleKeys.filter_screen_my_i_partner_search.tr(),
                      style: const TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    LocaleKeys.filter_screen_most_thee_chose.tr(),
                    style: const TextStyle(
                      color: AppColors.secondary,
                    ),
                  ),
                  Column(
                    children: parterSearchList.map((e) {
                      return CustomRadio(
                        labes: e['name'],
                        groupe: e['selected'],
                        value: true,
                        onChanged: (r) {
                          log('message');
                          setState(() {
                            e['selected'] = r;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 50,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                  onPressed: () => {},
                  child: Text(
                    LocaleKeys.filter_screen_button_title.tr(),
                    style: const TextStyle(
                      color: AppColors.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
