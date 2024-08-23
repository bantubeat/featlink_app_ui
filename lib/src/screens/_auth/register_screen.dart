import 'package:featlink_app/src/components/form/input_text_field.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/button_with_icon.dart';
import 'package:featlink_app/src/components/logo.dart';

import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            stops: [0, 1],
            colors: [
              AppColors.primaryLight,
              Colors.white, // Starting color
              // Ending color
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
              const Logo(),
              const SizedBox(
                height: 16,
              ),
              Text(
                LocaleKeys.register_screen_title.tr(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                LocaleKeys.register_screen_description.tr(),
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonWithIcon(
                text: LocaleKeys.register_screen_sign_up_google.tr(),
                icon: const Icon(
                  MaterialCommunityIcons.google,
                  color: Colors.red,
                ),
                onPressed: (context) {},
                backgroundColor: Colors.white,
                borderWidth: 2,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                LocaleKeys.register_screen_or.tr(),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              InputTextField(
                hintText: LocaleKeys.register_screen_email_hint.tr(),
              ),
              const SizedBox(height: 16),
              InputTextField(
                hintText: LocaleKeys.register_screen_password_hint.tr(),
                obscureText: true,
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                onPressed: (context) {
                  //
                },
                text: LocaleKeys.register_screen_sign_up.tr(),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                LocaleKeys.register_screen_new_to_featlink.tr(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              PrimaryButton(
                onPressed: (context) {
                  //
                },
                text: LocaleKeys.register_screen_login.tr(),
                backgroundColor: AppColors.secondary,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                LocaleKeys.register_screen_terms.tr(),
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
