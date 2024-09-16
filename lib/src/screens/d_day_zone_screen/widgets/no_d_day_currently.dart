import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_button.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class NoDDayCurrently extends StatelessWidget {
  const NoDDayCurrently({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            GradiantButton(
              elevation: true,
              isThreeColor: true,
              label: LocaleKeys.no_d_day_currently_publish_d_day.tr(),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            Text(
              LocaleKeys.no_d_day_currently_no_d_day_message.tr(),
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              LocaleKeys.no_d_day_currently_express_desire.tr(),
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            GradiantButton(
              elevation: true,
              isThreeColor: true,
              label: LocaleKeys.no_d_day_currently_publish_d_day.tr(),
              onPressed: () {},
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
