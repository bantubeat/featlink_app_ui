import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'widgets/bantubeat_featured_artists.dart';
import 'widgets/call_to_action_section.dart';
import 'widgets/message_item.dart';

class ChatMessageListScreen extends StatelessWidget {
  const ChatMessageListScreen({super.key});
  final int messageLength = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageLength + 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const BantubeatFeaturedArtists();
          }

          if (index == 1) {
            return const CallToActionSection();
          }

          if (index == messageLength + 2) {
            return const SizedBox(height: 100);
          }
          return Dismissible(
            key: UniqueKey(),
            background: Container(
              color: AppColors.primary,
            ),
            child: MessageItem(
              isOnline: (index % 3 == 0) ? false : true,
              senderName: 'John Doe',
              isSelected: (index == 3) ? true : false,
              senderImage: AppAssets.fakeArtist,
              subSenderImage: (index % 2 == 0) ? null : AppAssets.fakeArtist,
              message: 'Hey, how are you ?',
            ),
          );
        },
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
