import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'widgets/access_item.dart';
import 'widgets/payment_session_item.dart';

class AccessFeatlinkOutsiteAfricaScreen extends StatelessWidget {
  const AccessFeatlinkOutsiteAfricaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final innerWidth = size.width - 40; // margin/padding removed
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: size.width,
          child: Column(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.fakeAvatarImage),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: AppColors.primary, width: 4),
                  borderRadius: const BorderRadius.all(Radius.circular(200)),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Clarinette',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      LocaleKeys
                          .access_featlink_outsite_africa_screen_access_expiration
                          .tr(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Text(' : '),
                  const Text(
                    '00 J - 00:00:00',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.access_featlink_outsite_africa_screen_buy_access
                    .tr(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const AccessItem(
                time: '24 heures',
                amount: '2.00 EUR',
                amoutBzc: '400 BZC',
              ),
              const AccessItem(
                time: '24 heures',
                amount: '2.00 EUR',
                amoutBzc: '400 BZC',
                borderColor: AppColors.primary,
                text1Color: AppColors.primary,
                text3Color: AppColors.primary,
              ),
              const AccessItem(
                time: '24 heures',
                amount: '2.00 EUR',
                amoutBzc: '400 BZC',
              ),
              const AccessItem(
                time: '24 heures',
                amount: '2.00 EUR',
                amoutBzc: '400 BZC',
              ),
              const AccessItem(
                time: '24 heures',
                amount: '2.00 EUR',
                amoutBzc: '400 BZC',
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: innerWidth,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.myGray,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys
                                .access_featlink_outsite_africa_screen_payment
                                .tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          PaymentSessionItem(
                            label: LocaleKeys
                                .access_featlink_outsite_africa_screen_featlink_access
                                .tr(),
                            value1: '1 Mois',
                            value2: '1400 BZC',
                            value2Color: AppColors.myOtherDark.withOpacity(0.7),
                          ),
                          PaymentSessionItem(
                            label: LocaleKeys
                                .access_featlink_outsite_africa_screen_total
                                .tr(),
                            value2: '1400 BZC',
                          ),
                          PaymentSessionItem(
                            label: LocaleKeys
                                .access_featlink_outsite_africa_screen_discount
                                .tr(),
                            value2: '0%',
                          ),
                          PaymentSessionItem(
                            labelColor: AppColors.primary,
                            value2Color: AppColors.primary,
                            label: LocaleKeys
                                .access_featlink_outsite_africa_screen_amount_to_pay
                                .tr(),
                            value2: '1400 BZC',
                          ),
                          Text(
                            LocaleKeys
                                .access_featlink_outsite_africa_screen_pay_with_balance
                                .tr(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: innerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.primaryLight.withOpacity(0.4),
                            ),
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  LocaleKeys
                                      .access_featlink_outsite_africa_screen_beatzcoins_balance
                                      .tr(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    const Text(
                                      '5000',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColors.primary,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'BZC',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.myWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            LocaleKeys
                                .access_featlink_outsite_africa_screen_balance_is_sufficient
                                .tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            LocaleKeys
                                .access_featlink_outsite_africa_screen_balance_is_insufficient
                                .tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                      width: innerWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: PrimaryButton(
                              text: LocaleKeys
                                  .access_featlink_outsite_africa_screen_pay
                                  .tr(),
                              onPressed: (_) {},
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: PrimaryButton(
                              text: LocaleKeys
                                  .access_featlink_outsite_africa_screen_purchase_coins
                                  .tr(),
                              onPressed: (_) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
