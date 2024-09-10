import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'widgets/content_widget.dart';

class FeatlinkWithoutLimitsOffre91Screen extends StatefulWidget {
  const FeatlinkWithoutLimitsOffre91Screen({super.key});

  @override
  State<FeatlinkWithoutLimitsOffre91Screen> createState() =>
      _FeatlinkWithoutLimitsOffre91ScreenState();
}

class _FeatlinkWithoutLimitsOffre91ScreenState
    extends State<FeatlinkWithoutLimitsOffre91Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ContentWidget(
        handlePressObtaind: () {},
        itemColor: const Color.fromRGBO(45, 121, 109, 1),
        itemDackColor: const Color.fromRGBO(0, 68, 69, 1),
        itemLimit: '24h',
        itemLimitDays: '24h',
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
