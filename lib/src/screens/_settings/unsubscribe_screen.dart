import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class UnsubscribeScreen extends StatelessWidget {
  const UnsubscribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.unsubscribe_screen_title.tr(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.myWhite,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        shadowColor: AppColors.myDark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.unsubscribe_screen_confirmation_question.tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      LocaleKeys.unsubscribe_screen_description.tr(),
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      LocaleKeys.unsubscribe_screen_consequence_list_title.tr(),
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    ListItem(
                      text: LocaleKeys.unsubscribe_screen_consequence_1.tr(),
                    ),
                    ListItem(
                      text: LocaleKeys.unsubscribe_screen_consequence_2.tr(),
                    ),
                    ListItem(
                      text: LocaleKeys.unsubscribe_screen_consequence_3.tr(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: PrimaryButton(
                  text: LocaleKeys.unsubscribe_screen_unsubscribe.tr(),
                  fontWeight: FontWeight.w900,
                  onPressed: (_) {},
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 7,
          ),
          child: Icon(
            Icons.circle,
            size: 7,
            color: AppColors.myDark,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
