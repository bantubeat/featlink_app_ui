import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/_d-day/page_d-day_zone_screen/widgets/the_d_day_tab.dart';
import 'package:featlink_app/src/screens/_d-day/page_d-day_zone_screen/widgets/your_d_day_tab.dart';
import 'package:flutter/material.dart';

class PageDdayZoneScreen extends StatelessWidget {
  const PageDdayZoneScreen({super.key});

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
            tabs: [
              Tab(
                text: LocaleKeys.d_day_screen_the_d_day.tr(),
              ),
              Tab(text: LocaleKeys.d_day_screen_your_d_day.tr()),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TheDDayTab(datas: myData),
            const YourDDayTab(),
          ],
        ),
      // bottomNavigationBar: const AppNavigationBottomSheet(),
			  bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                // height: height * 0.15,
                child: BottomNavigationBar(
                  unselectedItemColor: AppColors.pale,
                  selectedItemColor: AppColors.myPrimarySoft,
                  type: BottomNavigationBarType.fixed,
                  items: <BottomNavigationBarItem>[
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: '',
                      activeIcon: Image(
                        image: AssetImage(AppAssets.imageLogo2),
                        width: 20,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Container(
												padding: const EdgeInsets.all(4),
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
													color: AppColors.myGray,
                        ),
                        child: const Image(
                          image: AssetImage(AppAssets.letterb),
                        ),
                      ),
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: '',
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.timer_outlined),
                      label: '',
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.chat),
                      label: '',
                    ),
                  ],
                ),
              ),
              const Positioned(
                child: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  size: 17,
                  color: AppColors.myPrimarySoft,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
