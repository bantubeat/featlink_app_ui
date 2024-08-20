import 'package:featlink_app/src/components/form/input_text_field.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/button_with_icon.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/resources/app_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:math' show min;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          minHeight: screenHeight,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.primaryLight,
              Colors.white, // Starting color
              Colors.white, // Ending color
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 32,
              ),
              SizedBox.square(
                dimension: min(128, 128),
                child: Center(
                  child: Image.asset(
                    AppAssets.imageLogo, // Pass assets using AppAssets
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                LocaleKeys.login_screen_title.tr(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                LocaleKeys.login_screen_description.tr(),
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonWithIcon(
                text: LocaleKeys.login_screen_login_with_google.tr(),
                icon: SvgPicture.asset(
                  AppIcons.google,
                  height: 24, // Adjust the size as needed
                ),
                onPressed: (context) {},
                backgroundColor: Colors.white,
                borderWidth: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                LocaleKeys.login_screen_or.tr(),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              InputTextField(
                hintText: LocaleKeys.login_screen_email_hint.tr(),
              ),
              const SizedBox(height: 16),
              InputTextField(
                hintText: LocaleKeys.login_screen_password_hint.tr(),
                obscureText: true,
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                onPressed: (context) {
                  //
                },
                text: LocaleKeys.login_screen_login.tr(),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                LocaleKeys.login_screen_not_register.tr(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              PrimaryButton(
                onPressed: (context) {
                  //
                },
                text: LocaleKeys.login_screen_sign_up.tr(),
                backgroundColor: AppColors.secondary,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                LocaleKeys.login_screen_terms.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
