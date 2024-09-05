import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class CallToActionSection extends StatelessWidget {
  const CallToActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: AppColors.myGray,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: PrimaryButton(
                    onPressed: (_) {},
                    text: LocaleKeys.chat_message_list_screen_contact_support
                        .tr(),
                    fixedSize: const Size.fromHeight(30),
                    backgroundColor: AppColors.myWhite,
                    borderWidth: 2,
                    fontSize: 10,
                    elevation: 2,
                    color: AppColors.myDark,
                  ),
                ),
                const SizedBox(width: 20),
                Flexible(
                  child: PrimaryButton(
                    onPressed: (_) {},
                    text:
                        LocaleKeys.chat_message_list_screen_buy_an_access.tr(),
                    fixedSize: const Size.fromHeight(30),
                    borderColor: AppColors.myWhite,
                    borderWidth: 2,
                    fontSize: 12,
                    elevation: 2,
                    color: AppColors.myWhite,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              LocaleKeys.chat_message_list_screen_messages.tr(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
