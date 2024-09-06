import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          Positioned(
            top: 35,
            right: 0,
            left: 0,
            child: Center(
              child: Text(
                LocaleKeys.pub_d_day_blue_screen_bottom_text.tr(),
                style: GoogleFonts.lato(
                  color: AppColors.myDark,
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Center(
              child: Image.asset(
                AppAssets
                    .imageGroupsPublishD, // Remplacez par le chemin de votre image
                height: 390,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  LocaleKeys.pub_d_day_blue_screen_header_message.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
