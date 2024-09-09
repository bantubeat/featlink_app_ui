import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class Gift {
  String headIcon;
  String label;
  int bzcNumber;
  String bzcIcon;

  Gift({
    required this.headIcon,
    required this.label,
    required this.bzcNumber,
    required this.bzcIcon,
  });
}

class GiftPicker extends StatefulWidget {
  final void Function(Gift?)? onGiftPicked;

  const GiftPicker({this.onGiftPicked});

  @override
  State<StatefulWidget> createState() => _GiftPicker();
}

class _GiftPicker extends State<GiftPicker> {
  Gift? selectedGift;
  Gift _onGiftTap(Gift gift) {
    if (widget.onGiftPicked != null) widget.onGiftPicked!(gift);
    return gift;
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final List<Gift> gifts = [
      Gift(
        headIcon: AppAssets.imagesCrown,
        label: LocaleKeys.gift_picker_crown.tr(),
        bzcNumber: 100,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesBananas,
        label: LocaleKeys.gift_picker_banana.tr(),
        bzcNumber: 10,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesRedHeartForLove,
        label: LocaleKeys.gift_picker_heart.tr(),
        bzcNumber: 1,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesRose,
        label: LocaleKeys.gift_picker_rose.tr(),
        bzcNumber: 1,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesSparkleStar,
        label: LocaleKeys.gift_picker_star.tr(),
        bzcNumber: 5,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesYellowBird,
        label: LocaleKeys.gift_picker_bird.tr(),
        bzcNumber: 5,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesSeahorse,
        label: LocaleKeys.gift_picker_dragon.tr(),
        bzcNumber: 10,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesFish,
        label: LocaleKeys.gift_picker_fish.tr(),
        bzcNumber: 20,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesCatUnderUmberlla,
        label: LocaleKeys.gift_picker_cat.tr(),
        bzcNumber: 200,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesDogBirthday,
        label: LocaleKeys.gift_picker_dog.tr(),
        bzcNumber: 200,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesChampionCupWithAStar,
        label: LocaleKeys.gift_picker_trophy.tr(),
        bzcNumber: 500,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesPeacePigeon,
        label: LocaleKeys.gift_picker_colombe.tr(),
        bzcNumber: 100,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesBirthdayCake,
        label: LocaleKeys.gift_picker_cake.tr(),
        bzcNumber: 100,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesLionSitting,
        label: LocaleKeys.gift_picker_lion.tr(),
        bzcNumber: 1000,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesPileOfGoldBars,
        label: LocaleKeys.gift_picker_gold_bullion.tr(),
        bzcNumber: 10000,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesDiamond,
        label: LocaleKeys.gift_picker_diamond.tr(),
        bzcNumber: 5000,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesUnicorn,
        label: LocaleKeys.gift_picker_unicorn.tr(),
        bzcNumber: 2000,
        bzcIcon: AppAssets.imagesVector,
      ),
      Gift(
        headIcon: AppAssets.imagesAfricanDrum,
        label: LocaleKeys.gift_picker_djembe.tr(),
        bzcNumber: 3000,
        bzcIcon: AppAssets.imagesVector,
      ),
    ];

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF35332C),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Wrap(
        runSpacing: 8.0,
        children: List.generate(gifts.length, (index) {
          return GestureDetector(
            onTap: () => _onGiftTap(gifts[index]),
            child: SizedBox(
              width: screenWidth / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    width: 21,
                    height: 16,
                    gifts[index].headIcon,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    gifts[index].label, // Nom du gift
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${gifts[index].bzcNumber}', // Nombre de bzc
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset(
                        width: 15,
                        height: 13,
                        gifts[index].bzcIcon,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
