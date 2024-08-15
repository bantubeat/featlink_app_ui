import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/welcome2_app_bar.dart';
import 'widgets/welcome2_main_body.dart';

class Welcome2Screen extends StatelessWidget {
  const Welcome2Screen();

  @override
  Widget build(BuildContext context) {
    // All screen must wrapped in a Scaffold
    return Scaffold(
      appBar: Welcome2AppBar(),
      body: Column(
        children: [
          Expanded(child: Welcome2MainBody()),
          PrimaryButton(
            text: LocaleKeys.common_next.tr(),
            onPressed: (_) {},
            backgroundColor: AppColors.myDark,
          ),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
