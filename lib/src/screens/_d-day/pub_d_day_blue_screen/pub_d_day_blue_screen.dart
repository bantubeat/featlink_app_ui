import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';

class PubDDayBlueScreen extends StatefulWidget {
  const PubDDayBlueScreen({super.key});

  @override
  State<PubDDayBlueScreen> createState() => _PubDDayBlueScreenState();
}

class _PubDDayBlueScreenState extends State<PubDDayBlueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(244, 253, 255, 1),
              Color.fromRGBO(255, 254, 248, 1),
            ],
          ),
        ),
        child: Stack(
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
                      LocaleKeys.pub_d_day_blue_screen_subheader_message.tr(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color.fromRGBO(31, 130, 196, 1),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: const Color.fromRGBO(231, 251, 255, 1),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () => {},
                  child: Text(
                    LocaleKeys.pub_d_day_blue_screen_button_text.tr(),
                    style: const TextStyle(
                      color: Color.fromRGBO(31, 130, 196, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
