import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalSwipezonePromotionalsFails extends StatelessWidget {
  final void Function() handlePress;

  const ModalSwipezonePromotionalsFails({
    required this.handlePress,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Material(
        elevation: 1,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              height: 300,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10, top: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors.myDark,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.close, // Icône que vous voulez afficher
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      height: 250,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Image.asset(
                              AppAssets.imagesSwipezoneGroupFails,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Image.asset(
                              AppAssets.imagesanxiousFaceWithSweat,
                            ),
                          ),
                          Positioned(
                            bottom: 100,
                            left: 70,
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(186, 230, 255, 0.67),
                                    Color.fromRGBO(208, 207, 233, 0.34),
                                    Color.fromRGBO(255, 206, 183, 1),
                                    Color.fromRGBO(223, 39, 113, 1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 50,
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(186, 230, 255, 0.67),
                                    Color.fromRGBO(208, 207, 233, 0.34),
                                    Color.fromRGBO(255, 206, 183, 1),
                                    Color.fromRGBO(223, 39, 113, 1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 80,
                            right: 50,
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(208, 207, 233, 0.2),
                                    Color.fromRGBO(255, 206, 183, 0.6),
                                    Color.fromRGBO(223, 39, 113, 0.33),
                                    Color.fromRGBO(186, 230, 255, 0.4),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        LocaleKeys.modal_swipezone_promotionals_oups.tr(),
                        style: GoogleFonts.lato(
                          color: AppColors.myDark,
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        LocaleKeys.modal_swipezone_promotionals_fails_have_token
                            .tr(),
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 2,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(),
                ),
              ),
              onPressed: () => handlePress,
              child: Text(
                LocaleKeys.modal_swipezone_promotionals_buy_chips.tr(),
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
