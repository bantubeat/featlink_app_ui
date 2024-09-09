import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class PrivateModeSettingsScreen extends StatelessWidget {
  const PrivateModeSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.private_mode_settings_screen_title.tr(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.myWhite,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        shadowColor: AppColors.myDark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.myWhite,
                    child: Column(
                      children: [
                        Text(
                          LocaleKeys.private_mode_settings_screen_description
                              .tr(),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  LocaleKeys
                                      .private_mode_settings_screen_swipes_zone
                                      .tr(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Transform.scale(
                                scale: 0.6,
                                child: Switch(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.myGray,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.myWhite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys
                              .private_mode_settings_screen_change_account_type
                              .tr(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          LocaleKeys
                              .private_mode_settings_screen_change_account_type_description
                              .tr(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.myGray,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.myWhite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys
                              .private_mode_settings_screen_who_can_see_my_profile
                              .tr(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Wrap(
                            alignment: WrapAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    LocaleKeys.private_mode_settings_screen_man
                                        .tr(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.6,
                                    child: Switch(
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    LocaleKeys
                                        .private_mode_settings_screen_women
                                        .tr(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.6,
                                    child: Switch(
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    LocaleKeys
                                        .private_mode_settings_screen_couple
                                        .tr(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.6,
                                    child: Switch(
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    LocaleKeys
                                        .private_mode_settings_screen_others
                                        .tr(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.6,
                                    child: Switch(
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Center(
              child: PrimaryButton(
                text: LocaleKeys.private_mode_settings_screen_save.tr(),
                onPressed: (_) {},
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
