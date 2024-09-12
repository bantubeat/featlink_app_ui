import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'widgets/free_coins_screen_builder.dart';

class FreeCoinsRedScreen extends StatelessWidget {
  const FreeCoinsRedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FreeCoinsScreenBuilder(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 197, 53, 27),
            Color.fromARGB(255, 255, 133, 96),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        capacitiesTextColor: const Color.fromARGB(255, 255, 82, 59),
        checkIconColor: const Color.fromARGB(255, 255, 72, 59),
        capacities: [
          LocaleKeys.free_coins_red_screen_coins_capacity_1.tr(),
          LocaleKeys.free_coins_red_screen_coins_capacity_2.tr(),
          LocaleKeys.free_coins_red_screen_coins_capacity_3.tr(),
          LocaleKeys.free_coins_red_screen_coins_capacity_4.tr(),
          LocaleKeys.free_coins_red_screen_coins_capacity_5.tr(),
        ],
        starNumber: 5,
        coinsNumber: '100 BZC',
        onPressed: (_) {},
        onClose: () {},
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
