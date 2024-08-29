import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class YourDDayTab extends StatelessWidget {
  const YourDDayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
       
        children: [
          Row(
            children: [
              Text(
                LocaleKeys.d_day_screen_your_d_day_text_title.tr(),
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            LocaleKeys.d_day_screen_your_d_day_text_text1.tr(),
            style: const TextStyle(fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              LocaleKeys.d_day_screen_your_d_day_text_text2.tr(),
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              LocaleKeys.d_day_screen_your_d_day_text_text3.tr(),
              style: const TextStyle(fontSize: 18),
            ),
          ),
           SizedBox(height: MediaQuery.of(context).size.height*0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradiantButton(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.4,
                  MediaQuery.of(context).size.height * 0.06,
                ),
                label: LocaleKeys.d_day_screen_your_d_day_button_publish.tr(),
                onPressed: insertData,
              ),
              GradiantButton(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.4,
                  MediaQuery.of(context).size.height * 0.06,
                ),
                label: LocaleKeys.d_day_screen_your_d_day_button_see.tr(),
                onPressed: insertData,
              ),
            ],
          ),
        ],
      ),
    );
  }

  static void insertData() {}
}
