import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'crush_tab_3_swipespay.dart';
import 'user_card.dart';

class CrushTab4Match extends StatefulWidget {
  const CrushTab4Match({super.key});

  @override
  State<CrushTab4Match> createState() => _CrushTab4MatchState();
}

class _CrushTab4MatchState extends State<CrushTab4Match> {
  final List<UserTmp> _list = [
    const UserTmp(
      age: 24,
      name: 'Audrey',
      icon: AppAssets.matchIcon,
      isOnline: false,
      image: AppAssets.imgTmp1,
      ville: 'Abidjan',
    ),
    const UserTmp(
      age: 24,
      name: 'lulu10',
      icon: AppAssets.matchIcon,
      isOnline: true,
      image: AppAssets.imgTmp2,
      ville: 'Yaoundé',
    ),
    const UserTmp(
      age: 25,
      name: 'lulu10',
      icon: AppAssets.matchIcon,
      isOnline: true,
      image: AppAssets.imgTmp3,
      ville: 'Douala',
    ),
    const UserTmp(
      age: 24,
      name: 'lulu10',
      icon: AppAssets.matchIcon,
      isOnline: true,
      image: AppAssets.imgTmp4,
      ville: 'Bafoussam',
    ),
    const UserTmp(
      age: 25,
      name: 'lulu10',
      icon: AppAssets.matchIcon,
      isOnline: false,
      image: AppAssets.imgTmp5,
      ville: 'Douala',
    ),
    const UserTmp(
      age: 24,
      name: 'lulu10',
      icon: AppAssets.matchIcon,
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
                  LocaleKeys.crush_screen_match_header_text.tr(),
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
                  '  25 ${LocaleKeys.crush_screen_match_n.tr()}',
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
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.spaceAround,
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
