import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'clipped_circles.dart';
import 'header_widget.dart';

class ContentWidget extends StatelessWidget {
  ContentWidget({
    required this.handlePressObtaind,
    required this.itemColor,
    required this.itemDackColor,
    required this.itemLimit,
    required this.itemLimitDays,
    super.key,
  });

  final void Function() handlePressObtaind;
  final Color itemColor;
  final Color itemDackColor;
  final String itemLimit;
  final String itemLimitDays;

  final List<String> item = [
    LocaleKeys.featlink_without_limits_screen_swipes_unlimited.tr(),
    LocaleKeys.featlink_without_limits_screen_unlimited_conversations.tr(),
    LocaleKeys.featlink_without_limits_screen_dial_without_match.tr(),
    LocaleKeys.featlink_without_limits_screen_d_day_unlimited.tr(),
    LocaleKeys.featlink_without_limits_screen_discoveries_unlimited.tr(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            itemColor: itemColor,
            itemLimit: itemLimit,
            item: item,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 179,
            decoration: BoxDecoration(
              color: itemColor,
              borderRadius: BorderRadius.circular(5.6),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: Center(
                    child: ClippedCircles(
                      context: context,
                      width: MediaQuery.of(context).size.width,
                      height: 179,
                      isSmall: false,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  right: 0,
                  child: Center(
                    child: ClippedCircles(
                      context: context,
                      width: MediaQuery.of(context).size.width,
                      height: 190,
                      isSmall: true,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -7,
                  left: 0,
                  child: Center(
                    child: Image.asset(
                      AppAssets.flatImage,
                      width: 50,
                      height: 100,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '',
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1,
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                          ), // Default font size
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\n ${LocaleKeys.featlink_without_limits_screen_flat_text.tr()}',
                              style: const TextStyle(
                                fontSize: 10.82,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '\n${LocaleKeys.featlink_without_limits_screen_percentage_text.tr()}',
                              style: const TextStyle(
                                fontSize: 44.39,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '\n ${LocaleKeys.featlink_without_limits_screen_discount_text.tr()}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  child: Transform.rotate(
                    angle: -(12.94),
                    child: Container(
                      height: 23.2,
                      width: 100,
                      decoration: BoxDecoration(
                        color: itemColor,
                        borderRadius: BorderRadius.circular(2.8),
                      ),
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    height: 10.51,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: itemColor,
                      borderRadius: BorderRadius.circular(3.51),
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: itemDackColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        LocaleKeys.featlink_without_limits_screen_free_text
                            .tr(args: [itemLimitDays]),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Text(
                  LocaleKeys.featlink_without_limits_screen_offer_text.tr(),
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Text.rich(
                  TextSpan(
                    text: LocaleKeys
                        .featlink_without_limits_screen_acknowledgement_text
                        .tr(),
                    style: const TextStyle(
                      fontSize: 10,
                    ), // Default font size
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            ' ${LocaleKeys.featlink_without_limits_screen_terms_text.tr()}',
                        style: const TextStyle(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: itemColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () => handlePressObtaind,
              child: Text(
                LocaleKeys.featlink_without_limits_screen_obtaint.tr(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 105,
          ),
        ],
      ),
    );
  }
}
