import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'widgets/crush_tab_1_like.dart';
import 'widgets/crush_tab_2_dialpay.dart';
import 'widgets/crush_tab_3_swipespay.dart';
import 'widgets/crush_tab_4_match.dart';
import 'widgets/header_widget.dart';

class CrushScreen extends StatefulWidget {
  const CrushScreen({super.key});

  @override
  State<CrushScreen> createState() => _CrushScreenState();
}

class _CrushScreenState extends State<CrushScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<dynamic> _list = [
    {
      'icon': AppAssets.likes,
      'label': LocaleKeys.crush_screen_likes.tr(),
    },
    {
      'icon': AppAssets.dialpay,
      'label': LocaleKeys.crush_screen_dialpay.tr(),
    },
    {
      'icon': AppAssets.swipespay,
      'label': LocaleKeys.crush_screen_swipespay.tr(),
    },
    {
      'icon': AppAssets.match,
      'label': LocaleKeys.crush_screen_match.tr(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(
          children: [
            const Header(),
            const Divider(height: 1, color: AppColors.myGray),
            const SizedBox(height: 7),
            TabBar(
              dividerHeight: 0,
              controller: _tabController,
              tabs: _list
                  .map(
                    (tab) => Tab(
                      icon: SizedBox.square(
                        dimension: min(30, screenSize.width - 250),
                        child: Image.asset(
                          tab['icon'],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          tab['label'],
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 90),
                child: TabBarView(
                  controller: _tabController,
                  children: const <Widget>[
                    CrushTab1Like(),
                    CrushTab2Dialpay(),
                    CrushTab3Swipespay(),
                    CrushTab4Match(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
