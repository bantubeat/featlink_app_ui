import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';

class PubDDayVioletScreen extends StatefulWidget {
  const PubDDayVioletScreen({super.key});

  @override
  State<PubDDayVioletScreen> createState() => _PubDDayVioletScreenState();
}

class _PubDDayVioletScreenState extends State<PubDDayVioletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeaderWidget(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  LocaleKeys.pub_d_day_violet_screen_header_message.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  LocaleKeys.pub_d_day_violet_screen_subheader_message.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromRGBO(119, 31, 152, 1),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Center(
              child: Image.asset(
                AppAssets
                    .imagesDayflowBestFriends, // Remplacez par le chemin de votre image
                height: 390,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                backgroundColor: const Color.fromRGBO(119, 31, 152, 1),
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
                LocaleKeys.pub_d_day_violet_screen_button_text.tr(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 105,
            ),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
