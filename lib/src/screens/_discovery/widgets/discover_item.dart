import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscoveryItem extends StatelessWidget {
  const DiscoveryItem({
    required this.name,
    required this.image,
    required this.age,
    required this.gender,
    this.isLocked = false,
    this.haveDot = false,
    super.key,
  });

  final String name;
  final String image;
  final String age;
  final String gender;
  final bool isLocked;
  final bool haveDot;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          constraints: const BoxConstraints(
            maxWidth: 200,
            minWidth: 150,
            minHeight: 150,
            maxHeight: 200,
          ),
          width: (size.width / 2) - 30,
          height: (size.width / 2) - 30,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isLocked)
                Expanded(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: (size.width / 2) - 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          AppAssets.lockIcon,
                        ),
                      ),
                    ),
                  ),
                ),
              Container(
                width: size.width / 2 - 30,
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                color: AppColors.myGray.withOpacity(0.98),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$name, $age ${LocaleKeys.discovery_in_my_city_screen_age_year.tr()}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      gender,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (haveDot)
          const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.circle,
              color: AppColors.primary,
              size: 20,
            ),
          ),
      ],
    );
  }
}
