import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.4,
          color: AppColors.myGray,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        // color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox.square(
                dimension: min(60, screenSize.width - 220),
                child: Image.asset(
                  AppAssets.imageLogo3,
                ),
              ),
              Text(
                LocaleKeys.crush_screen_bzc_solde.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.myDark,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                decoration: const BoxDecoration(
                  color: AppColors.myGray,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Text(
                  '0 BZC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.myDark,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                  decoration: const BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    LocaleKeys.crush_screen_bzc_echange.tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.myDark,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                  decoration: const BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    LocaleKeys.crush_screen_bay_bzc.tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.myDark,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
