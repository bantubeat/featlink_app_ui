import 'dart:math' show min;
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/resources/app_assets.dart';

/// Selon moi ce composant ne mérite pas vraiment de devenir un car la
/// page orginal n'est pas longue et il y a pas de réel bénefice
/// mais néamoins j'en ai fait un composant pour servir d'exemple pour
/// le cas ou nous aurions des pages qui auront plusieurs composant enfant
class Welcome2MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
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
                  AppAssets.imageLogo, // Always pass assets using AppAssets
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              LocaleKeys.welcome_screen_note.tr(), // Always Translate strings
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
