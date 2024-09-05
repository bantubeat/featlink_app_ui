import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/message_input.dart';
import 'widgets/message_bubble.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  static List<Map<String, dynamic>> messages = [
    {
      'message': LocaleKeys.conversation_message_1.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_1.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_2.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_2.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_3.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_3.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_4.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_4.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_5.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_5.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_6.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_6.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_7.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_7.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_8.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_8.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_9.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_9.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_10.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_10.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_11.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_11.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_12.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_12.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_13.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_13.tr(),
    },
    {
      'message': LocaleKeys.conversation_message_14.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_14.tr(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.myWhite,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CircleAvatar(
              backgroundImage: const NetworkImage(
                'data:image/jpeg;base64,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',
              ),
              onBackgroundImageError: (exception, stackTrace) {},
              radius: 20.0,
            ),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.conversation_username.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      LocaleKeys.conversation_online.tr(),
                      style: const TextStyle(fontSize: 12.0),
                    ),
                    const SizedBox(width: 4.0),
                    const Icon(
                      Icons.circle,
                      color: AppColors.primary,
                      size: 7.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: AppColors.myGray.withOpacity(0.5),
            height: 1.5,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'profile') {
                // Action pour voir le profil
              } else if (value == 'delete') {
                // Action pour effacer la conversation
              } else if (value == 'block') {
                // Action pour bloquer l'utilisateur
              }
            },
            color: AppColors.primary,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'profile',
                child: ListTile(
                  leading: const Icon(Icons.person, color: AppColors.myWhite),
                  title: Text(
                    LocaleKeys.conversation_profile.tr(),
                    style: const TextStyle(color: AppColors.myWhite),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'delete',
                child: ListTile(
                  leading: const Icon(Icons.delete, color: AppColors.myWhite),
                  title: Text(
                    LocaleKeys.conversation_delete_conversation.tr(),
                    style: const TextStyle(color: AppColors.myWhite),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'block',
                child: ListTile(
                  leading: const Icon(Icons.block, color: AppColors.myWhite),
                  title: Text(
                    LocaleKeys.conversation_block_user.tr(),
                    style: const TextStyle(color: AppColors.myWhite),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter, // Change alignment to topCenter
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    controller: ScrollController(
                      initialScrollOffset: messages.length * 500,
                    ),
                    children: [
                      MessageBubble(
                        message: messages[0]['message'],
                        isSentByMe: messages[0]['isSentByMe'],
                        time: messages[0]['time'],
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              height: 1.0,
                              color: AppColors.myGray,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 10,
                            ),
                            child: Text(
                              LocaleKeys.conversation_yesterday.tr(),
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ),
                          const Expanded(
                            child: Divider(
                              height: 1.0,
                              color: AppColors.myGray,
                            ),
                          ),
                        ],
                      ),
                      for (var message in messages.sublist(1))
                        MessageBubble(
                          message: message['message'],
                          isSentByMe: message['isSentByMe'],
                          time: message['time'],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0, // Position the container at the top
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color.fromARGB(144, 255, 255, 255),
                    Color.fromARGB(25, 255, 255, 255),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MessageInput(),
    );
  }
}
