import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class ArtistBantubeatItem extends StatelessWidget {
  const ArtistBantubeatItem({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      constraints: const BoxConstraints(
        minWidth: 100,
        maxWidth: 300,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: (size.width / 3) - 20,
      child: Column(
        children: [
          SizedBox(
            height: (size.width / 3) - 20,
            child: Stack(
              children: [
                Image.asset(
                  image,
                  width: size.width,
                ),
                SizedBox(
                  width: size.width,
                  height: size.width,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        AppAssets.circledPlayIcon,
                        scale: 0.7,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                LocaleKeys.chat_message_list_screen_listen_on_bantubeat.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
