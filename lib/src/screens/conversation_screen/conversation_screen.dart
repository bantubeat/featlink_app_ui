import 'dart:io';
import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'widgets/media_input.dart';
import 'widgets/media_widget.dart';
import 'widgets/message_input.dart';
import 'widgets/message_bubble.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  static List<Map<String, dynamic>> messages = [
    {
      'message': LocaleKeys.conversation_message_1.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_1.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_2.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_2.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_3.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_3.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_4.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_4.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_5.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_5.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_6.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_6.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_7.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_7.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_8.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_8.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_9.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_9.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_10.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_10.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_11.tr(),
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_11.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_12.tr(),
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_12.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_13.tr(),
      'isSentByMe': true,
      'file': true,
      'isVideo': false,
      'time': LocaleKeys.conversation_time_13.tr(),
      'gift': null,
      'voice': null,
    },
    {
      'message': LocaleKeys.conversation_message_14.tr(),
      'isSentByMe': false,
      'file': true,
      'isVideo': false,
      'time': LocaleKeys.conversation_time_14.tr(),
      'gift': null,
      'voice': AppAssets.fakeaudio,
    },
    {
      'message': '100 BZC',
      'isSentByMe': true,
      'time': LocaleKeys.conversation_time_14.tr(),
      'gift': Image.asset(
        AppAssets.imagesCrown,
        width: 50,
        height: 50,
        fit: BoxFit.contain,
      ),
      'voice': null,
    },
    {
      'message': '200 BZC',
      'isSentByMe': false,
      'time': LocaleKeys.conversation_time_14.tr(),
      'gift': Image.memory(
        base64Decode(
          '',
        ),
        width: 50,
        height: 50,
        fit: BoxFit.contain,
      ),
      'voice': null,
    },
  ];

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  File? _selectedMedia;
  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedMedia = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickVideo() async {
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedMedia = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedMedia != null ? Colors.black : null,
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
                '',
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
      body: _selectedMedia != null
          ? MediaWidget(
              file: _selectedMedia!,
              onClose: () {
                setState(() {
                  _selectedMedia = null;
                });
              },
            )
          : Stack(
              alignment: Alignment.topCenter,
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
                            initialScrollOffset:
                                ConversationScreen.messages.length * 500,
                          ),
                          children: [
                            MessageBubble(
                              message: ConversationScreen.messages[0]
                                  ['message'],
                              isSentByMe: ConversationScreen.messages[0]
                                  ['isSentByMe'],
                              time: ConversationScreen.messages[0]['time'],
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
                            for (var message
                                in ConversationScreen.messages.sublist(1))
                              MessageBubble(
                                message: message['message'],
                                isSentByMe: message['isSentByMe'],
                                time: message['time'],
                                file: message['file'],
                                isVideo: message['isVideo'],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
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
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
      floatingActionButton: _selectedMedia != null
          ? MediaInput(
              onSend: () {},
            )
          : MessageInput(
              onPressPickImage: _pickImage,
              onPressPickVideo: _pickVideo,
              respondToTextMessage: true,
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}