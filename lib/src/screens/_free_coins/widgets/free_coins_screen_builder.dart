import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FreeCoinsScreenBuilder extends StatelessWidget {
  const FreeCoinsScreenBuilder({
    required this.gradient,
    required this.capacitiesTextColor,
    required this.checkIconColor,
    required this.coinsNumber,
    required this.capacities,
    required this.starNumber,
    required this.onPressed,
    this.starColor = Colors.amber,
    this.onClose,
    super.key,
  });

  final Gradient gradient;
  final void Function()? onClose;
  final String coinsNumber;
  final Color capacitiesTextColor;
  final Color checkIconColor;
  final Color starColor;
  final List<String> capacities;
  final double starNumber;
  final void Function(BuildContext) onPressed;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: onClose,
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: const Icon(
                        Icons.add_circle,
                        color: AppColors.myWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              constraints: const BoxConstraints(
                maxWidth: 400,
              ),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.free_coins_green_screen_title.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.myWhite,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.only(
                          top: 60,
                          bottom: 50,
                          left: 20,
                          right: 20,
                        ),
                        margin: const EdgeInsets.only(top: 30),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppAssets.receiptBgImage,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              coinsNumber,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              LocaleKeys
                                  .free_coins_green_screen_coins_capacities
                                  .tr(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: capacitiesTextColor,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            ...capacities.map(
                              (e) => Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: CoinsCapacityItem(
                                  capacity: e,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: checkIconColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: checkIconColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: AppColors.myWhite,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ..._starBuilder(starNumber),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    LocaleKeys.free_coins_green_screen_this_offer_not_cumulable
                        .tr(),
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.myWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(
                        color: AppColors.myWhite,
                      ),
                      children: [
                        TextSpan(
                          text:
                              '${LocaleKeys.free_coins_green_screen_virtuals_article_policy_1.tr()} ',
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                          text:
                              '${LocaleKeys.free_coins_green_screen_virtuals_article_policy_2.tr()} ',
                        ),
                        TextSpan(
                          text: LocaleKeys
                              .free_coins_green_screen_virtuals_article_policy_3
                              .tr(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  PrimaryButton(
                    text: LocaleKeys.free_coins_green_screen_get_coins.tr(),
                    onPressed: onPressed,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    backgroundColor: AppColors.myWhite,
                    color: AppColors.myDark,
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _starBuilder(double number) {
    List<Widget> stars = [];
    int fullStars = number.floor();
    for (int i = 0; i < fullStars; i++) {
      stars.add(
        Icon(
          Icons.star,
          color: starColor,
        ),
      );
    }
    if (number - fullStars > 0.75) {
      stars.add(
        Icon(
          Icons.star,
          color: starColor,
        ),
      );
    } else if (number - fullStars > 0.0) {
      stars.add(
        Icon(
          Icons.star_half,
          color: starColor,
        ),
      );
    }
    for (int i = stars.length; i < 5; i++) {
      stars.add(
        Icon(
          Icons.star_border,
          color: starColor,
        ),
      );
    }
    return stars;
  }
}

class CoinsCapacityItem extends StatelessWidget {
  const CoinsCapacityItem({
    required this.capacity,
    super.key,
  });

  final String capacity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.check),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            capacity,
          ),
        ),
      ],
    );
  }
}
