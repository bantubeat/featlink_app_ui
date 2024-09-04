import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class MainSettingsScreen extends StatelessWidget {
  const MainSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.main_settings_screen_title.tr(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.myWhite,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        shadowColor: AppColors.myDark,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                LocaleKeys.main_settings_screen_preferences.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              minVerticalPadding: 8,
              minTileHeight: 0,
              title: Text(
                LocaleKeys.main_settings_screen_dark_mode.tr(),
              ),
              trailing: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
            ),
            ListTile(
              title: Text(
                LocaleKeys.main_settings_screen_account.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_unsubscribe.tr(),
              onTap: () {},
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_private_mode.tr(),
              onTap: () {},
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_logout.tr(),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                LocaleKeys.main_settings_screen_support.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_help_page.tr(),
              onTap: () {},
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_copyright.tr(),
              onTap: () {},
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_beatzcoins_usage.tr(),
              onTap: () {},
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_featlink_pub.tr(),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                LocaleKeys.main_settings_screen_legals_notices.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_general_conditions.tr(),
              onTap: () {},
            ),
            SettingItem(
              label:
                  LocaleKeys.main_settings_screen_confidentiality_policy.tr(),
              onTap: () {},
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_cookies_policy.tr(),
              onTap: () {},
            ),
            SettingItem(
              label: LocaleKeys.main_settings_screen_visual_article_policy.tr(),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({
    required this.label,
    this.onTap,
    super.key,
  });
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minVerticalPadding: 8,
      minTileHeight: 0,
      title: Text(
        label,
      ),
    );
  }
}
