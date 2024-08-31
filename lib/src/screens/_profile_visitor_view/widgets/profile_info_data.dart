import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileInfoData extends StatelessWidget {
  const ProfileInfoData({
    required this.text,
    this.imageIcon,
    this.svgIcon,
    super.key,
  });

  final String? imageIcon;
  final String? svgIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      color: AppColors.myWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (svgIcon != null)
            SvgPicture.asset(
              svgIcon!,
              height: 24,
              width: 24,
            ),
          if (imageIcon != null)
            Image.asset(
              imageIcon!,
              height: 24,
              width: 24,
            ),
          if (imageIcon != null || svgIcon != null) const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
