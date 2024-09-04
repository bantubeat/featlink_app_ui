import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class AccessFeatlinkOutsiteAfricaScreen extends StatelessWidget {
  const AccessFeatlinkOutsiteAfricaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  border: Border.all(
                    color: AppColors.primary,
                    width: 4,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(200),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Clarinette',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                children: [
                  Text(
                    '${LocaleKeys.access_featlink_outsite_africa_screen_access_expiration.tr()} : ',
                  ),
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
              const SizedBox(
                height: 20,
              ),
              Text(
                LocaleKeys.access_featlink_outsite_africa_screen_buy_access
                    .tr(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
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
                      width: size.width,
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
                          const SizedBox(
                            height: 10,
                          ),
                          PaymentSessionIten(
                            label: LocaleKeys
                                .access_featlink_outsite_africa_screen_featlink_access
                                .tr(),
                            value1: '1 Mois',
                            value2: '1400 BZC',
                          ),
                          PaymentSessionIten(
                            label: LocaleKeys
                                .access_featlink_outsite_africa_screen_total
                                .tr(),
                            value2: '1400 BZC',
                          ),
                          PaymentSessionIten(
                            label: LocaleKeys
                                .access_featlink_outsite_africa_screen_discount
                                .tr(),
                            value2: '0%',
                          ),
                          PaymentSessionIten(
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
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: size.width,
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
                          const SizedBox(
                            height: 10,
                          ),
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
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                      width: size.width,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          IntrinsicWidth(
                            child: PrimaryButton(
                              text: LocaleKeys
                                  .access_featlink_outsite_africa_screen_pay
                                  .tr(),
                              onPressed: (_) {},
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IntrinsicWidth(
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

class AccessItem extends StatelessWidget {
  const AccessItem({
    required this.time,
    required this.amount,
    required this.amoutBzc,
    this.borderColor = AppColors.myGray600,
    this.text1Color = AppColors.myOtherDark,
    this.text2Color = AppColors.myOtherDark,
    this.text3Color = AppColors.myOtherDark,
    super.key,
  });

  final String time;
  final String amount;
  final String amoutBzc;
  final Color borderColor;
  final Color text1Color;
  final Color text2Color;
  final Color text3Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              time,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: text1Color,
              ),
            ),
          ),
          Expanded(
            child: Text(
              amount,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: text2Color,
              ),
            ),
          ),
          Expanded(
            child: Text(
              amoutBzc,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: text3Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentSessionIten extends StatelessWidget {
  const PaymentSessionIten({
    required this.label,
    this.value1 = '',
    this.value2 = '',
    this.borderColor = Colors.transparent,
    this.labelColor = AppColors.myOtherDark,
    this.value1Color = AppColors.myOtherDark,
    this.value2Color = AppColors.myOtherDark,
    super.key,
  });

  final String label;
  final String value1;
  final String value2;
  final Color borderColor;
  final Color labelColor;
  final Color value1Color;
  final Color value2Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: labelColor,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: value1Color,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value2,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: value2Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
