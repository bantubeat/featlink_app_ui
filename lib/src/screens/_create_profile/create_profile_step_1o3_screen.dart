import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/screens/_create_profile/widgets/create_profile_step_bottom.dart';
import 'package:flutter/material.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart'
    show FontAwesome;

class CreateProfileStep1o3Screen extends StatefulWidget {
  const CreateProfileStep1o3Screen({super.key});

  @override
  State<CreateProfileStep1o3Screen> createState() =>
      _CreateProfileStep1o3ScreenState();
}

class _CreateProfileStep1o3ScreenState
    extends State<CreateProfileStep1o3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, size: 40),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            LocaleKeys.create_profile_step_1o3_screen_country_and_city.tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys.create_profile_step_1o3_screen_add_your_city.tr(),
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            LocaleKeys.create_profile_step_1o3_screen_info_nearby_people.tr(),
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      width: 128,
                      height: 128,
                      decoration: BoxDecoration(
                        color: AppColors.myPrimarySoft.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(64),
                      ),
                      child: const Center(
                        child: Icon(
                          FontAwesome.flag,
                          color: AppColors.primary,
                          size: 48,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    CSCPicker(
                      dropdownDecoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      disabledDropdownDecoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      countrySearchPlaceholder: LocaleKeys
                          .create_profile_step_1o3_screen_country
                          .tr(),
                      stateSearchPlaceholder:
                          LocaleKeys.create_profile_step_1o3_screen_region.tr(),
                      citySearchPlaceholder:
                          LocaleKeys.create_profile_step_1o3_screen_city.tr(),
                      // Dropdown label
                      countryDropdownLabel: LocaleKeys
                          .create_profile_step_1o3_screen_country
                          .tr(),
                      stateDropdownLabel:
                          LocaleKeys.create_profile_step_1o3_screen_region.tr(),
                      cityDropdownLabel:
                          LocaleKeys.create_profile_step_1o3_screen_city.tr(),
                      selectedItemStyle: const TextStyle(
                        color: AppColors.myDark,
                        fontSize: 14,
                      ),
                      dropdownHeadingStyle: const TextStyle(
                        color: AppColors.myDark,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      dropdownItemStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      dropdownDialogRadius: 10.0,
                      searchBarRadius: 10.0,
                      onCountryChanged: (value) {},
                      onStateChanged: (value) {},
                      onCityChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const CreateProfileStepBottom(),
        ],
      ),
    );
  }
}
