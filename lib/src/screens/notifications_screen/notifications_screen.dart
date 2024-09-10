import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/notifications_screen/widgets/notification_card_item.dart';
import 'package:flutter/material.dart';
import 'widgets/date_separator.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 40,
            color: AppColors.myGray600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: fakeData().length,
          itemBuilder: (context, index) {
            var item = fakeData()[index];

            if (item['type'] == 'date_separator') {
              return DateSeparator(date: item['title']);
            } else {
              return NotificationCardItem(
                message: item['title'],
                image: item['image'],
              );
            }
          },
        ),
      ),
    );
  }

  List fakeData() => List.generate(
        20,
        (i) {
          if (i % 5 == 0) {
            return {
              'type': 'date_separator',
              'title': '${-i + 20} Aug 2024',
            };
          } else {
            return {
              'type': 'notification',
              'image': AppAssets.fakeAvatarImage,
              'title': LocaleKeys.notifications_screen_swipespay_message.tr(),
            };
          }
        },
      );
}
