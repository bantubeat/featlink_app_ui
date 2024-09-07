import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/header_widget.dart';
import 'widgets/horizontal_profile_list.dart';
import 'widgets/profile_on_map.dart';

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
      backgroundColor: const Color.fromRGBO(253, 247, 253, 1),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(253, 247, 253, 1),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  const HeaderWidget(),
                  HorizontalProfileList(),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(248, 231, 246, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        LocaleKeys.discoverys_first_day_screen_header_message
                            .tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.acme(
                          color: AppColors.myDark,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        LocaleKeys.discoverys_first_day_screen_new_users_message
                            .tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: AppColors.myDark,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 374,
                width: 345,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        AppAssets.imagesDiscovaryMaps,
                        height: 374,
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      right: 50,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: ProfileOnMap(
                        visible: true,
                        label: LocaleKeys
                            .discoverys_first_day_screen_connect_with
                            .tr(
                          args: ['clara'],
                        ),
                        raduis: 25,
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVbgElWE7pbgzhzdS2b_6OjjFzEM_JqPLF5Q&s',
                        textColor: AppColors.myWhite,
                        color: const Color.fromRGBO(75, 22, 76, 1),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: ProfileOnMap(
                        visible: false,
                        label: LocaleKeys
                            .discoverys_first_day_screen_connect_with
                            .tr(
                          args: ['clara'],
                        ),
                        raduis: 25,
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRC1t3O0WiTbF7vac0E00EPIuvZ-XrxSBFHA&s',
                        textColor: AppColors.myWhite,
                        color: const Color.fromRGBO(226, 152, 152, 1),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 50,
                      child: ProfileOnMap(
                        visible: false,
                        label: LocaleKeys
                            .discoverys_first_day_screen_connect_with
                            .tr(
                          args: ['Paul'],
                        ),
                        raduis: 30,
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx0CIy3mIbpe2nuLRfK5xxPcwxmTvXjJsBNw&s',
                        color: AppColors.myWhite,
                        textColor: const Color.fromRGBO(75, 22, 76, 1),
                      ),
                    ),
                  ],
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
                      style: GoogleFonts.inter(
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
