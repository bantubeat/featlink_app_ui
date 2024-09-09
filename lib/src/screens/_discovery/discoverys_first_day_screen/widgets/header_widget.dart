import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
              LocaleKeys.discoverys_first_day_screen_bottom_text.tr(),
              style: GoogleFonts.inter(
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
