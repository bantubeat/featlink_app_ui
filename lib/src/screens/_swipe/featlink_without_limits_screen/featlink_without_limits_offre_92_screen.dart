import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'widgets/content_widget.dart';

class FeatlinkWithoutLimitsOffre92Screen extends StatefulWidget {
  const FeatlinkWithoutLimitsOffre92Screen({super.key});

  @override
  State<FeatlinkWithoutLimitsOffre92Screen> createState() =>
      _FeatlinkWithoutLimitsOffre92ScreenState();
}

class _FeatlinkWithoutLimitsOffre92ScreenState
    extends State<FeatlinkWithoutLimitsOffre92Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ContentWidget(
        handlePressObtaind: () {},
        itemColor: const Color.fromRGBO(121, 45, 45, 1),
        itemDackColor: const Color.fromRGBO(69, 0, 0, 1),
        itemLimit: '30 jours',
        itemLimitDays: '30d',
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
