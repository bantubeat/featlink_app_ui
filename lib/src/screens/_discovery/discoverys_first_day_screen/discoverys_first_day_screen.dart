import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';

class DiscoverysFirstDayScreen extends StatefulWidget {
  const DiscoverysFirstDayScreen({super.key});

  @override
  State<DiscoverysFirstDayScreen> createState() =>
      _DiscoverysFirstDayScreenState();
}

class _DiscoverysFirstDayScreenState extends State<DiscoverysFirstDayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  const HeaderWidget(),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(
                      child: Text(
                        LocaleKeys.discoverys_first_day_screen_header_message
                            .tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColors.myDark,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Center(
                      child: Text(
                        LocaleKeys.discoverys_first_day_screen_new_users_message
                            .tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color.fromRGBO(226, 152, 152, 1),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  AppAssets.imagesDiscovaryMaps,
                  height: 390,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor: const Color.fromRGBO(226, 152, 152, 1),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => {},
                    child: Text(
                      LocaleKeys.discoverys_first_day_screen_button_text.tr(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 110,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
