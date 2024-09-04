import 'dart:math' show min;

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

// THIS IS AN EXAMPLE SCREEN
// HERE IS TICKET LINK: https://trello.com/c/fwqU336S/10-10-la-page-de-bienvene
// HERE IS PR LINK: https://github.com/bantubeat/featlink_app_ui/pull/1
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    // All screen must wrapped in a Scaffold
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, size: 40),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      LocaleKeys.welcome_screen_greeting.tr(
                        args: ['Nom de profil'],
                      ),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      LocaleKeys.welcome_screen_on_the_world_coolest_chat.tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox.square(
                      dimension: min(250, screenSize.width - 60),
                      child: Center(
                        child: Image.asset(
                          AppAssets.imageLogo, // Pass assets using AppAssets
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      LocaleKeys.welcome_screen_note.tr(), // Translate strings
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PrimaryButton(
            text: LocaleKeys.common_next.tr(),
            onPressed: (_) {},
            fontSize: 24,
          ),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
