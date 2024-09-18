import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class MediaInput extends StatelessWidget {
  const MediaInput({
    required this.onSend,
    super.key,
  });
  final void Function() onSend;
  @override
  Widget build(BuildContext context) {
    final minHeight = MediaQuery.of(context).size.height * 0.070;
    final maxHeight = 4 * minHeight;
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Row(
        children: [
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
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: LocaleKeys.conversation_your_message.tr(),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ), // Centrer le texte verticalement
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            icon: const Icon(Icons.send, color: AppColors.primary),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
