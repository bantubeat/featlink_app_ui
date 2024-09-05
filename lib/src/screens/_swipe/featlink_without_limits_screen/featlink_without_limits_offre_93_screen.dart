import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'widgets/content_widget.dart';

class FeatlinkWithoutLimitsOffre93Screen extends StatefulWidget {
  const FeatlinkWithoutLimitsOffre93Screen({super.key});

  @override
  State<FeatlinkWithoutLimitsOffre93Screen> createState() =>
      _FeatlinkWithoutLimitsOffre93ScreenState();
}

class _FeatlinkWithoutLimitsOffre93ScreenState
    extends State<FeatlinkWithoutLimitsOffre93Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ContentWidget(
        handlePressObtaind: () {},
        itemColor: const Color.fromRGBO(45, 61, 121, 1),
        itemDackColor: const Color.fromRGBO(0, 10, 69, 1),
        itemLimit: '90 jours',
        itemLimitDays: '90d',
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
