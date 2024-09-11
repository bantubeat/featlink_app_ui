import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/card_widget.dart';

class SwipeZoneMatchScreen extends StatefulWidget {
  const SwipeZoneMatchScreen({super.key});

  @override
  State<SwipeZoneMatchScreen> createState() => _SwipeZoneMatchScreenState();
}

class _SwipeZoneMatchScreenState extends State<SwipeZoneMatchScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Durée de l'animation
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn, // Courbe de l'animation
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Libérer les ressources de l'animation
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Row(
            children: [
              Image.asset(
                AppAssets.imageLogo2,
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 10),
              Text(
                LocaleKeys.swipe_zone_match_screen_app_bar_title.tr(),
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(226, 152, 152, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Image.asset(AppAssets.imagesSlider),
          const SizedBox(width: 15),
          const Badge(
            label: Text('90'),
            backgroundColor: Color.fromRGBO(226, 152, 152, 0.47),
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Icon(
              Icons.notifications,
              color: Color(0xFF170E2B),
              size: 22,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: FadeTransition(
        opacity: _animation,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  child: Image.asset(
                    AppAssets.imagesTopLeftBack,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                left: 0,
                child: GestureDetector(
                  child: Image.asset(
                    AppAssets.imagesBottomLeft,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: GestureDetector(
                  child: Image.asset(
                    AppAssets.imagesEmoji1,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.4,
                left: 15,
                child: GestureDetector(
                  child: Image.asset(
                    AppAssets.imagesSmilingFaceWithHearts,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                right: 15,
                child: GestureDetector(
                  child: Image.asset(
                    AppAssets.imagesSmilingFaceWithHearts,
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.4,
                right: 20,
                child: GestureDetector(
                  child: Image.asset(
                    AppAssets.imagesEmoji1,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        LocaleKeys.swipe_zone_match_screen_match_title.tr(),
                        style: GoogleFonts.archivo(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(226, 152, 152, 0.47),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        LocaleKeys.swipe_zone_match_screen_match_subtitle.tr(),
                        style: GoogleFonts.archivo(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height > 670
                          ? MediaQuery.of(context).size.height * .1
                          : MediaQuery.of(context).size.height * .05,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 40,
                        // vertical: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(226, 152, 152, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          LocaleKeys.swipe_zone_match_screen_button_say_hello
                              .tr(),
                          style: GoogleFonts.archivo(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 40,
                        right: 40,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(226, 152, 152, 0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          LocaleKeys.swipe_zone_match_screen_button_keep_swiping
                              .tr(),
                          style: GoogleFonts.archivo(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(226, 152, 152, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 102),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .1,
                right: MediaQuery.of(context).size.width * .20,
                child: Transform.rotate(
                  angle: 10 * pi / 180,
                  child: const CardWidget(
                    img: AppAssets.imagesTmp7,
                    isTop: true,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .2,
                left: MediaQuery.of(context).size.width * .20,
                child: Transform.rotate(
                  angle: -10 * pi / 180,
                  child: const CardWidget(
                    isTop: false,
                    img: AppAssets.imgTmp2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
