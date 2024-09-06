import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(255, 204, 204, 1), // Couleur en bas
            Color.fromRGBO(255, 255, 255, 1), // Couleur en bas
          ],
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(right: 10, top: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.myDark,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.close, // Icône que vous voulez afficher
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              LocaleKeys.discovery_in_you_city_screen_bottom_text.tr(),
              style: const TextStyle(
                fontFamily: 'Inter',
                color: AppColors.myDark,
                fontWeight: FontWeight.w800,
                fontSize: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
