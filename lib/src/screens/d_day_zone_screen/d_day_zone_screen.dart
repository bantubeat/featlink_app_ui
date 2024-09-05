import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/d_day_zone_screen/widgets/the_d_day_tab.dart';
import 'package:featlink_app/src/screens/d_day_zone_screen/widgets/your_d_day_tab.dart';
import 'package:flutter/material.dart';

class DDayZoneScreen extends StatelessWidget {
  const DDayZoneScreen({super.key});

  static List<Map<String, dynamic>> myData = [
    {
      'title': "Envie d'aller danser",
      'location': 'Douala',
      'date': 'Samedi 14/01',
      'imageUrl': AppAssets.theddayimagefirst,
      'username': 'Créole',
      'userImageUrl': AppAssets.theddayimagefirst,
    },
    {
      'title': "Envie d'un verre",
      'location': 'Yaoundé',
      'date': "Aujourd'hui",
      'imageUrl': AppAssets.theddayimagesecond,
      'username': 'Créole',
      'userImageUrl': AppAssets.theddayimagesecond,
    },
    {
      'title': 'Un fastfood',
      'location': 'Yaoundé',
      'date': 'du 14/01 au 17/01',
      'imageUrl': AppAssets.theddayimagethree,
      'username': 'Créole',
      'userImageUrl': AppAssets.theddayimagethree,
    },
    {
      'title': 'Une balade',
      'location': 'Limbé',
      'date': "Aujourd'hui",
      'imageUrl': AppAssets.theddayimagefour,
      'username': 'Pièrre',
      'userImageUrl': AppAssets.theddayimagefour,
    },
    {
      'title': "Envie d'aller danser",
      'location': 'Douala',
      'date': 'Samedi 14/01',
      'imageUrl': AppAssets.theddayimagefirst,
      'username': 'Créole',
      'userImageUrl': AppAssets.theddayimagefirst,
    },
    {
      'title': "Envie d'un verre",
      'location': 'Yaoundé',
      'date': "Aujourd'hui",
      'imageUrl': AppAssets.theddayimagesecond,
      'username': 'Créole',
      'userImageUrl': AppAssets.theddayimagesecond,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.d_day_screen_title.tr(),
            style: const TextStyle(fontSize: 15),
          ),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              // Action pour fermer
            },
          ),
          bottom: TabBar(
            labelColor: AppColors.myDark,
            unselectedLabelColor: AppColors.myDark,
            tabs: [
              Tab(text: LocaleKeys.d_day_screen_the_d_day.tr()),
              Tab(text: LocaleKeys.d_day_screen_your_d_day.tr()),
            ],
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 85),
              child: TabBarView(
                children: [
                  TheDDayTab(datas: myData),
                  const YourDDayTab(),
                ],
              ),
            ),
            const AppNavigationBottomSheet(),
          ],
        ),
      ),
    );
  }
}
