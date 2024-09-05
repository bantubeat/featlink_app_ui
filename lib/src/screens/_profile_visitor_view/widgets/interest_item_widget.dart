import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class InterestItemWidget extends StatelessWidget {
  const InterestItemWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.myGray),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text),
    );
  }
}
