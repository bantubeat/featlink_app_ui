import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class ModalAcivationOffreAfriques extends StatelessWidget {
  final void Function() handlePressActivate;
  ModalAcivationOffreAfriques({
    required this.handlePressActivate,
    super.key,
  });
  final List<String> item = [
    LocaleKeys.modal_acivation_offre_afriques_swipes_unlimited.tr(),
    LocaleKeys.modal_acivation_offre_afriques_unlimited_conversations.tr(),
    LocaleKeys.modal_acivation_offre_afriques_dial_without_match.tr(),
    LocaleKeys.modal_acivation_offre_afriques_d_day_unlimited.tr(),
    LocaleKeys.modal_acivation_offre_afriques_discoveries_unlimited.tr(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Material(
        elevation: 4,
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Material(
                elevation: 4,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(226, 152, 152, 1),
                        Color.fromRGBO(255, 204, 204, 1),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        LocaleKeys
                            .modal_acivation_offre_afriques_unlimited_featlink
                            .tr(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        LocaleKeys.modal_acivation_offre_afriques_try_free_24h
                            .tr(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        LocaleKeys.modal_acivation_offre_afriques_try_free_24h
                            .tr(),
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.modal_acivation_offre_afriques_benefits_access
                          .tr(),
                      style: const TextStyle(
                        fontSize: 10.22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    for (int i = 0; i < item.length; i++)
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 60, bottom: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.check),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              item[i],
                              style: const TextStyle(
                                fontSize: 10.22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      LocaleKeys.modal_acivation_offre_afriques_discover_power
                          .tr(),
                      style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.myDark,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                  ),
                  onPressed: () => {},
                  child: Text(
                    LocaleKeys.d_day_screen_d_dialog_cancelbutton
                        .tr()
                        .toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.myWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => handlePressActivate,
                  child: Text(
                    LocaleKeys.modal_acivation_offre_afriques_activate.tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
