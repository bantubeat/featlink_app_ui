import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    required this.itemColor,
    required this.itemLimit,
    required this.item,
    super.key,
  });

  final Color itemColor;
  final String itemLimit;
  final List<String> item;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  decoration: BoxDecoration(
                    color: itemColor,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          // Image centrée
                          Center(
                            child: Text(
                              LocaleKeys
                                  .featlink_without_limits_screen_unlimited_featlink
                                  .tr(),
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Icône à droite
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: const EdgeInsets.only(right: 20),
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.close, // Icône que vous voulez afficher
                                size: 15,
                                color: AppColors.myDark,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        LocaleKeys.featlink_without_limits_screen_try_free_24h
                            .tr(args: [itemLimit]),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        LocaleKeys.featlink_without_limits_screen_no_auto_change
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
              margin: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.featlink_without_limits_screen_benefits_access
                          .tr(),
                      style: const TextStyle(
                        fontSize: 10.22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    for (int i = 0; i < item.length; i++)
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 60, bottom: 6),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check,
                              color: itemColor,
                            ),
                            const SizedBox(
                              width: 20,
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
                      height: 20,
                    ),
                    Text(
                      LocaleKeys.featlink_without_limits_screen_discover_power
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
          ],
        ),
      ),
    );
  }
}
