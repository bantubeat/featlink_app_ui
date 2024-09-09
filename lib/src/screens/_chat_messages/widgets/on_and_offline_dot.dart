import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class OnlineDot extends StatelessWidget {
  const OnlineDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary,
              AppColors.primaryLight,
            ],
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class OfflineDot extends StatelessWidget {
  const OfflineDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: AppColors.myWhite,
          border: Border.all(color: AppColors.primary, width: 2),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
