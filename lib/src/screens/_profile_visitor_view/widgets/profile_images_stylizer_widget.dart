import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileImageStylizerWidget extends StatelessWidget {
  const ProfileImageStylizerWidget({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      color: AppColors.myWhite,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
