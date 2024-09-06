import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlue, // Couleur en haut
            Colors.white, // Couleur en bas
          ],
        ),
      ),
      child: Stack(
        children: [
          // Image centrée
          Center(
            child: Image.asset(
              AppAssets
                  .featlinkAccesIcon, // Remplacez par le chemin de votre image
              height: 100,
            ),
          ),
          // Icône à droite
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.myDark,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.close, // Icône que vous voulez afficher
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
