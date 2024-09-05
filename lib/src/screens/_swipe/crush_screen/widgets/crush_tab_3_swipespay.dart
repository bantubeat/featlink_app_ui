import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'user_card.dart';

class UserTmp {
  final String icon;
  final String name;
  final String image;
  final String ville;
  final int age;
  final bool isOnline;
  const UserTmp({
    required this.icon,
    required this.name,
    required this.age,
    required this.ville,
    required this.isOnline,
    required this.image,
  });
}

class CrushTab3Swipespay extends StatefulWidget {
  const CrushTab3Swipespay({super.key});

  @override
  State<CrushTab3Swipespay> createState() => _CrushTab3SwipespayState();
}

class _CrushTab3SwipespayState extends State<CrushTab3Swipespay> {
  final List<UserTmp> _list = [
    const UserTmp(
      age: 24,
      name: 'Audrey',
      icon: AppAssets.swipespayIcon,
      isOnline: false,
      image: AppAssets.imgTmp1,
      ville: 'Abidjan',
    ),
    const UserTmp(
      age: 24,
      name: 'lulu10',
      icon: AppAssets.swipespayIcon,
      isOnline: true,
      image: AppAssets.imgTmp2,
      ville: 'Yaoundé',
    ),
    const UserTmp(
      age: 25,
      name: 'lulu10',
      icon: AppAssets.swipespayIcon,
      isOnline: true,
      image: AppAssets.imgTmp3,
      ville: 'Douala',
    ),
    const UserTmp(
      age: 24,
      name: 'lulu10',
      icon: AppAssets.swipespayIcon,
      isOnline: true,
      image: AppAssets.imgTmp4,
      ville: 'Bafoussam',
    ),
    const UserTmp(
      age: 25,
      name: 'lulu10',
      icon: AppAssets.swipespayIcon,
      isOnline: false,
      image: AppAssets.imgTmp5,
      ville: 'Douala',
    ),
    const UserTmp(
      age: 24,
      name: 'lulu10',
      icon: AppAssets.swipespayIcon,
      isOnline: true,
      image: AppAssets.imgTmp5,
      ville: 'Bafoussam',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Wrap(
              children: [
                Text(
                  LocaleKeys.crush_screen_swipespay_header_text.tr(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 13),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  LocaleKeys.crush_screen_you_have.tr(),
                  style: const TextStyle(fontSize: 13),
                ),
                Text(
                  '  250 ${LocaleKeys.crush_screen_swipespay_n.tr()}',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 15,
              runSpacing: 20,
              runAlignment: WrapAlignment.spaceAround,
              alignment: WrapAlignment.center,
              children: _list
                  .map(
                    (e) => UserCard(
                      icon: e.icon,
                      name: e.name,
                      age: e.age,
                      ville: e.ville,
                      isOnline: e.isOnline,
                      onClick: (data) {},
                      image: e.image,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
