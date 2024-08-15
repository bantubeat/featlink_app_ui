import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class GradiantBottomBar extends StatelessWidget {
  const GradiantBottomBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 1],
          colors: [
            AppColors.myWhite,
            AppColors.primaryLight,
          ],
          tileMode: TileMode.decal,
        ),
      ),
    );
  }
}
