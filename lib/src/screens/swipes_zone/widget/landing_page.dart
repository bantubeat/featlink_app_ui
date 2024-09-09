import 'package:flutter/material.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    	return Center(
      child: Text(LocaleKeys.swipes_zone_screen_swipe_finished.tr()),
    );
  }
}