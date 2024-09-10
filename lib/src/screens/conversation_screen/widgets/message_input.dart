import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/screens/conversation_screen/widgets/gift_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MessageInput extends StatefulWidget {
  const MessageInput({
    required this.onPressPickImage,
    required this.onPressPickVideo,
    super.key,
  });
  final Future<void> Function() onPressPickImage;
  final Future<void> Function() onPressPickVideo;
  @override
  State<StatefulWidget> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  bool _showGiftList = false;
  @override
  Widget build(BuildContext context) {
    final minHeight = MediaQuery.of(context).size.height * 0.070;
    final maxHeight = 4 * minHeight;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            PopupMenuButton<String>(
              icon: const Icon(
                Icons.add_circle,
                color: AppColors.myDark,
              ),
              color: AppColors.myWhite,
              position: PopupMenuPosition.under,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  onTap: () async {
                    await widget.onPressPickImage();
                  },
                  child: ListTile(
                    leading:
                        const Icon(Icons.camera_alt, color: AppColors.myBlue),
                    title: Text(
                      LocaleKeys.conversation_picture.tr(),
                      style: const TextStyle(color: AppColors.myDark),
                    ),
                  ),
                ),
                const PopupMenuItem<String>(
                  height: 1,
                  padding: EdgeInsets.all(0),
                  enabled: false,
                  child: Divider(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    thickness: 1,
                  ),
                ),
                PopupMenuItem<String>(
                  onTap: () async {
                    await widget.onPressPickVideo();
                  },
                  child: ListTile(
                    leading:
                        const Icon(Icons.videocam, color: AppColors.myDark),
                    title: Text(
                      LocaleKeys.conversation_video.tr(),
                      style: const TextStyle(color: AppColors.myDark),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  minHeight: minHeight,
                  maxHeight: maxHeight,
                ),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.myWhite,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: AppColors.myGray),
                ),
                child: TextFormField(
                  minLines: 1,
                  maxLines: 6,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: LocaleKeys.conversation_your_message.tr(),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 20.0,
                    ), // Centrer le texte verticalement
                    suffixIcon: const IconButton(
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: AppColors.myDark,
                      ),
                      onPressed: null,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                MaterialCommunityIcons.gift,
                color: Color(0xFF35332C),
              ),
              onPressed: () {
                setState(() {
                  _showGiftList = !_showGiftList;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.send, color: AppColors.primary),
              onPressed: () {},
            ),
          ],
        ),
        if (_showGiftList)
          GiftPicker(
            onGiftPicked: (_) => setState(() => _showGiftList = false),
          ),
      ],
    );
  }
}
