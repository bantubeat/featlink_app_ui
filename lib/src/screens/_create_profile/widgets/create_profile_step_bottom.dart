import 'package:flutter/material.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:easy_localization/easy_localization.dart';

class CreateProfileStepBottom extends StatelessWidget {
  const CreateProfileStepBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PrimaryButton(
            text: LocaleKeys.common_next.tr(),
            onPressed: (_) {},
            fontSize: 16,
          ),
        ),
        const GradiantBottomBar(),
      ],
    );
  }
}
