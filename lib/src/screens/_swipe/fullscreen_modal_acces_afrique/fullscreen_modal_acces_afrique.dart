import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/featlink_acces_card.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/header_widget.dart';
import 'package:gif_view/gif_view.dart';

class ModalAccesAfriqueScreen extends StatefulWidget {
  const ModalAccesAfriqueScreen({super.key});

  @override
  State<ModalAccesAfriqueScreen> createState() =>
      _ModalAccesAfriqueScreenState();
}

class _ModalAccesAfriqueScreenState extends State<ModalAccesAfriqueScreen> {
  List<String> advantages = [
    LocaleKeys.fullscreen_modal_acces_afrique_swipes_unlimited.tr(),
    LocaleKeys.fullscreen_modal_acces_afrique_unlimited_conversations.tr(),
    LocaleKeys.fullscreen_modal_acces_afrique_dial_without_match.tr(),
    LocaleKeys.fullscreen_modal_acces_afrique_d_day_unlimited.tr(),
    LocaleKeys.fullscreen_modal_acces_afrique_discoveries_unlimited.tr(),
  ];
  int _current = 0;
  List items = [FeatlinkAccesCard(), FeatlinkAccesCard(), FeatlinkAccesCard()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                LocaleKeys.fullscreen_modal_acces_afrique_limitless_experience
                    .tr(),
                style: const TextStyle(
                  color: AppColors.myTextGraySoft,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                LocaleKeys.fullscreen_modal_acces_afrique_choose_access.tr(),
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.7)),
              ),
            ),
            const SizedBox(height: 10),
            Transform.translate(
              offset: const Offset(-25, 0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  viewportFraction: 0.84,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: items.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        decoration: const BoxDecoration(color: Colors.white),
                        child: FeatlinkAccesCard(),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(items, (index, elt) {
                return Container(
                  width: 5,
                  height: 5,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 2.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _current == index ? AppColors.myBlue : AppColors.pale,
                  ),
                );
              }),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color(0xFF0275B1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: kElevationToShadow[4],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys
                            .fullscreen_modal_acces_afrique_special_offer_24
                            .tr(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 30),
                      GifView.asset(
                        AppAssets.smilingFaceWithHeartEyes,
                        height: 30,
                        width: 30,
                        frameRate: 30, // default is 15 FPS
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    LocaleKeys.fullscreen_modal_acces_afrique_try_free_24h.tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10,
              ),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppColors.myWhite,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.myGray),
                boxShadow: kElevationToShadow[4],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      LocaleKeys.fullscreen_modal_acces_afrique_benefits_access
                          .tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.myTextGraySoft,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  for (int i = 0; i < advantages.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(Icons.check),
                          const SizedBox(width: 20),
                          Flexible(
                            child: Text(
                              advantages[i],
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: AppColors.myTextGraySoft,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 20),
                  Text(
                    LocaleKeys.fullscreen_modal_acces_afrique_discover_power
                        .tr(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  LocaleKeys.fullscreen_modal_acces_afrique_your_token_balance
                      .tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    '0 BZC',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: AppColors.primary,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.primaryLight,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                  ),
                  onPressed: () => {},
                  child: Text(
                    LocaleKeys.fullscreen_modal_acces_afrique_buy_tokens.tr(),
                    style: const TextStyle(
                      color: AppColors.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.myBlue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => {},
                  child: Text(
                    LocaleKeys.fullscreen_modal_acces_afrique_continue.tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 110),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
