import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class DateSeparator extends StatelessWidget {
  const DateSeparator({
    required this.date,
    super.key,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        date,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.myTextDarkSoft,
        ),
      ),
    );
  }
}
